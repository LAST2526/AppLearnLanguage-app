import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/core/utils/helpers.dart';
import 'package:last02/app/data/models/auth/forgot_password/forgot_password_request.dart';
import 'package:last02/app/data/repositories/auth_repository.dart';
import 'package:last02/app/modules/auth/controllers/login_controller.dart';
import 'package:last02/app/modules/auth/widgets/custom_result_dialog.dart';

class ForgotPasswordController extends BaseController {
  final email = TextEditingController();

  final FocusNode emailFocus = FocusNode();

  final emailError = ''.obs;
  late final AuthRepository authRepository;
  late final LoginController loginController;
  @override
  void onInit() {
    super.onInit();
    authRepository = Get.find(tag: (AuthRepository).toString());
    loginController = Get.find<LoginController>();
  }

  Future<void> sendResetRequest(String email) async {
    validateEmail();
    if (emailError.value.isEmpty) {
      await callDataService(
        authRepository.forgotPassword(
          ForgotPasswordRequest(email: email),
        ),
        onSuccess: (response) {
          Get.dialog(
            CustomResultDialog(
              type: DialogType.success,
              message: response.message,
              buttonText: appLocalization.password_reset_success_button,
              onPressed: () {
                Get.back();
                Get.back();
              },
            ),
            barrierDismissible: false,
          );
        },
      );
    }
  }

  void validateEmail() {
    emailError.value = Helpers.validateEmail(email.text, appLocalization,
            fieldName: appLocalization.emailError) ??
        '';
  }

  @override
  void onClose() {
    email.value = TextEditingValue.empty;
    super.onClose();
  }
}
