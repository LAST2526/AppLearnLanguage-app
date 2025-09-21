import 'package:last02/app/core/arguments/models/basic_info_arguments.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/core/utils/helpers.dart';
import 'package:last02/app/core/values/enum_values.dart';
import 'package:last02/app/data/models/auth/register/register_request.dart';
import 'package:last02/app/data/models/auth/register/register_response.dart';
import 'package:last02/app/data/models/course/course.dart';
import 'package:last02/app/data/repositories/auth_repository.dart';
import 'package:last02/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/routes/auth_service.dart';

class BasicInfoController extends BaseController {
  // Controllers
  final name = TextEditingController();
  final nationality = TextEditingController();
  final birthdate = Rxn<DateTime>();
  final birthdateError = ''.obs;
  final selectedGender = Rxn<Gender>();
  final course = Rxn<String>();

  // Register info from previous screen
  final email = RxnString();
  final password = RxnString();
  final provider = RxnInt();
  final userName = RxnString();
  // Course list
  final courseList = RxList<Course>();

  late final AuthRepository _repository = _getAuthRepository();

  // Focus Nodes
  final nameFocusNode = FocusNode();
  final nationalityFocusNode = FocusNode();

  final nameError = ''.obs;
  final nationalityError = ''.obs;

  List<Gender> get genders => Gender.values;
  List<MotherLanguage> get motherLanguages => MotherLanguage.values;

  final PreferenceManager preferenceManager =
      Get.find<PreferenceManager>(tag: (PreferenceManager).toString());

  @override
  void onInit() {
    super.onInit();
    _getArguments();
  }

  void _getArguments() {
    final args = Get.arguments as BasicInfoArguments?;
    if (args != null) {
      email.value = args.email;
      password.value = args.password;
      provider.value = args.provider;
      userName.value = args.userName;
      courseList.value = args.courses!;
    }
  }

  void handleSubmit() {
    final registerRequest = _getRegisterAccountRequest();

    callDataService(
      _repository.register(registerRequest),
      onSuccess: (res) => _handleOnRegisterSuccess(res),
    );
  }

  void _handleOnRegisterSuccess(RegisterResponse response) async {
    if (response.data?.accessToken != null) {
      preferenceManager.setString(
          PreferenceManager.keyToken, response.data?.accessToken ?? '');
      preferenceManager.setString(
          PreferenceManager.refreshToken, response.data?.refreshToken ?? '');
      Get.find<AuthService>().login();
      Get.offAllNamed(Routes.MAIN);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  @override
  void onClose() {
    nameFocusNode.dispose();
    nationalityFocusNode.dispose();
    super.onClose();
  }

  AuthRepository _getAuthRepository() {
    return Get.find(tag: (AuthRepository).toString());
  }

  RegisterRequest _getRegisterAccountRequest() {
    final existsCourse = courseList.firstWhereOrNull(
      (c) => c.title == course.value,
    );

    return RegisterRequest(
      userName: userName.value ?? '',
      email: email.value ?? '',
      password: password.value ?? '',
      name: name.text.trim(),
      nationality: nationality.text.trim(),
      courseId: existsCourse!.id,
      provider: provider.value ?? 2,
      gender: selectedGender.value!.getValueGender(),
      dob: Helpers.formatSendDate(birthdate.value!),
    );
  }
}
