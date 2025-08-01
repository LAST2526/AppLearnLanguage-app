import 'dart:io';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/core/utils/helpers.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/data/models/auth/login/login_email_request.dart';
import 'package:last02/app/data/models/auth/login/login_email_response.dart';
import 'package:last02/app/data/repositories/auth_repository.dart';
import 'package:last02/app/modules/auth/widgets/custom_result_dialog.dart';
import 'package:last02/app/routes/app_pages.dart';
import 'package:last02/app/routes/auth_service.dart';

class LoginController extends BaseController {
  final currentLocale = Rx<Locale>(const Locale('ja', ''));

  final languages = [
    {'code': 'vi', 'icon': 'images/vietnam_flag.svg'},
    {'code': 'ja', 'icon': 'images/japan_flag.svg'},
    {'code': 'en', 'icon': 'images/indonesia_flag.svg'},
  ];

  final email = TextEditingController();
  final password = TextEditingController();

  final FocusNode passwordFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();

  final emailError = ''.obs;
  final passwordError = ''.obs;

  final isPasswordVisible = true.obs;

  final PreferenceManager preferenceManager =
      Get.find<PreferenceManager>(tag: (PreferenceManager).toString());

  late final AuthRepository authRepository;

  RxMap<String, dynamic> userData = <String, dynamic>{}.obs;

  final Rxn<GoogleSignInAccount> googleUser = Rxn<GoogleSignInAccount>();

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  @override
  void onInit() {
    super.onInit();
    _loadLocale();
    authRepository = Get.find(tag: (AuthRepository).toString());

    if (Platform.isIOS || Platform.isMacOS) {
      _googleSignIn = GoogleSignIn(
        clientId:
            "424996609322-vsmh38kvlq7vrcc5vltpsd27b6u9b4rm.apps.googleusercontent.com",
        scopes: [
          'email',
        ],
      );
    }

    if (Platform.isAndroid) {
      _googleSignIn = GoogleSignIn(
        serverClientId:
            '424996609322-iolqfvthocduvbe002as0b5fbcs6ophb.apps.googleusercontent.com',
        scopes: [
          'email',
        ],
      );
    }
  }

  void _loadLocale() async {
    final savedLocale = await preferenceManager.getString('locale');
    if (savedLocale.isNotEmpty) {
      currentLocale.value = Locale(savedLocale);
      Get.updateLocale(currentLocale.value);
    } else {
      currentLocale.value = const Locale('ja', '');
      Get.updateLocale(currentLocale.value);
    }
  }

  void changeLocale(Locale newLocale) async {
    currentLocale.value = newLocale;
    Get.updateLocale(newLocale);
    emailError.value = '';
    passwordError.value = '';
    await preferenceManager.setString('locale', newLocale.toString());
  }

  void validatePassword() {
    passwordError.value = Helpers.validatePassword(
            password.text, appLocalization,
            fieldName: appLocalization.passwordLabel) ??
        '';
  }

  void validateEmail() {
    emailError.value = Helpers.validateEmail(email.text, appLocalization,
            fieldName: appLocalization.emailError) ??
        '';
  }

  Future<void> loginByEmail(LoginEmailRequest request) async {
    validatePassword();
    validateEmail();
    if (emailError.value.isEmpty && passwordError.value.isEmpty) {
      _handleLoginEmailService(request);
    }
  }

  // Future<void> loginWithGoogle({required bool forceChooseAccount}) async {
  //   if (forceChooseAccount) {
  //     await _googleSignIn.signOut();
  //   }
  //   final GoogleSignInAccount? account = await _googleSignIn.signIn();
  //   if (account != null) {
  //     final auth = await account.authentication;
  //     final token = auth.idToken;
  //     if (token != null) {
  //       await socialLogin(
  //         token: token,
  //         provider: SocialProvider.google,
  //         userName: account.email,
  //       );
  //     } else {
  //       Get.snackbar('Đăng nhập thất bại', 'Không nhận được token từ Google.');
  //     }
  //   } else {
  //     Get.snackbar(appLocalization.cancel, appLocalization.login_cancelled);
  //   }
  // }

  Future<void> _handleLoginEmailService(LoginEmailRequest request) async {
    final loginEmailService = authRepository.login(request);
    await callDataService(
      loginEmailService,
      onSuccess: (response) async {
        if (response.data.accessToken.isNotEmpty) {
          handleLoginSuccess(response);
        } else {
          Get.dialog(CustomResultDialog(
              type: DialogType.error,
              message: response.message,
              buttonText: appLocalization.closeDialogNotify,
              onPressed: () {
                Get.back();
              }));
        }
      },
    );
  }

  // Future<void> socialLogin(
  //     {required String token,
  //     required SocialProvider provider,
  //     String? userName}) async {
  //   final socialOAuthService = authRepository.socialOAuth(
  //     AuthQueryParam(
  //       socialProviderToken: token,
  //       provider: provider,
  //     ),
  //   );
  //   await callDataService(
  //     socialOAuthService,
  //     onSuccess: (response) async {
  //       if (response.data.accessToken.isNotEmpty) {
  //         handleLoginSuccess(response);
  //       } else {
  //         final arguments = BasicInfoArguments(
  //           email: response.data.mail,
  //           provider: getValueProvider(provider),
  //           userName: userName,
  //         );
  //         Get.offAllNamed(Routes.BASIC_INFO, arguments: arguments);
  //       }
  //     },
  //   );
  // }

  void goToRegister() {
    // Get.toNamed(Routes.REGISTER);
    emailError.value = '';
    passwordError.value = '';
    email.value = TextEditingValue.empty;
    password.value = TextEditingValue.empty;
  }

  void goToForgotPassword() {
    // Get.toNamed(Routes.FORGOT_PASSWORD);
    emailError.value = '';
    passwordError.value = '';
    email.value = TextEditingValue.empty;
    password.value = TextEditingValue.empty;
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }

  void handleLoginSuccess(LoginEmailResponse response) {
    preferenceManager.setString(
        PreferenceManager.keyToken, response.data.accessToken);
    preferenceManager.setString(
        PreferenceManager.refreshToken, response.data.refreshToken);

    preferenceManager.setString('locale', currentLocale.value.languageCode);
    _handleUploadFcmToken();
    Get.updateLocale(currentLocale.value);
    Get.find<AuthService>().login();
    Get.offAllNamed(Routes.MAIN);
  }

  void _handleUploadFcmToken() async {
    // final fcmToken = await preferenceManager.getString('fcmToken');
    // if (fcmToken.isNotEmpty) {
    //   await callDataService(authRepository.uploadFcmToken(fcmToken),
    //       onSuccess: (response) {
    //     if (response.isSuccess) {
    //       print('Save fcmToken success: ${response.data.token}');
    //     }
    //   });
    // }
  }
}
