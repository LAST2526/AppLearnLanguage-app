import 'package:last02/app/core/arguments/models/basic_info_arguments.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/core/utils/helpers.dart';
import 'package:last02/app/core/values/enum_values.dart';
import 'package:last02/app/core/widget/dialog_error.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/data/models/course/course.dart';
import 'package:last02/app/data/repositories/auth_repository.dart';
import 'package:last02/app/modules/auth/controllers/login_controller.dart';
import 'package:last02/app/routes/app_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RegisterController extends BaseController {
  late final AuthRepository authRepository;
  final PreferenceManager preferenceManager =
      Get.find<PreferenceManager>(tag: (PreferenceManager).toString());

  late final LoginController loginController;

  final RxBool isRegistered = false.obs;
  final RxMap<String, dynamic> userData = <String, dynamic>{}.obs;
  final Rxn<GoogleSignInAccount> googleUser = Rxn<GoogleSignInAccount>();
  final courseList = <Course>[].obs;

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  final FocusNode passwordFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode confirmPasswordFocus = FocusNode();

  final emailError = ''.obs;
  final passwordError = ''.obs;
  final confirmPasswordError = ''.obs;
  final isPasswordVisible = true.obs;
  final isconfirmPasswordVisible = true.obs;

  @override
  void onInit() {
    super.onInit();
    authRepository = Get.find(tag: (AuthRepository).toString());
    loginController = Get.find<LoginController>();
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return appLocalization
          .validation_required(appLocalization.confirmPassword);
    }
    if (value != password.text) {
      return appLocalization.confirm_password_mismatch;
    }
    return null;
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

  void validateConfirmPassword() {
    confirmPasswordError.value =
        _validateConfirmPassword(confirmPassword.text) ?? '';
  }

  Future<void> getAllCourses() async {
    await callDataService(
      authRepository.getCourses(),
      onSuccess: (response) {
        courseList.value = response.data;
      },
    );
  }

  Future<void> registerByEmail({required String email}) async {
    validateEmail();
    validatePassword();
    validateConfirmPassword();

    if (emailError.value.isEmpty &&
        passwordError.value.isEmpty &&
        confirmPasswordError.value.isEmpty) {
      final checkUserExistService = authRepository.checkUserExist(email);
      await callDataService(checkUserExistService, onSuccess: (response) async {
        if (response.data.isExist) {
          Get.dialog(DialogError(
            message: response.message,
          ));
        } else {
          await getAllCourses();
          final arguments = BasicInfoArguments(
              email: email,
              password: password.text,
              provider: getValueProvider(SocialProvider.email),
              userName: email,
              courses: courseList);
          Get.offAllNamed(Routes.BASIC_INFO, arguments: arguments);
        }
      });
    }
  }

  Future<void> registerWithGoogle() async {
    loginController.loginWithGoogle(forceChooseAccount: true);
  }

  void goToLogin() {
    Get.toNamed(Routes.LOGIN);
    emailError.value = '';
    passwordError.value = '';
    confirmPasswordError.value = '';
    email.value = TextEditingValue.empty;
    password.value = TextEditingValue.empty;
    confirmPassword.value = TextEditingValue.empty;
  }
}
