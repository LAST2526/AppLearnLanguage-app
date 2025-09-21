import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/app/data/repositories/user_repository.dart';
import 'package:last02/app/modules/auth/widgets/custom_result_dialog.dart';

class ChangePasswordController extends BaseController {
  late final UserRepository userRepository;

  final newPassword = TextEditingController();
  final currentPassword = TextEditingController();
  final confirmPassword = TextEditingController();

  final FocusNode currentPasswordFocus = FocusNode();
  final FocusNode newPasswordFocus = FocusNode();
  final FocusNode confirmPasswordFocus = FocusNode();

  final currentPasswordError = ''.obs;
  final newPasswordError = ''.obs;
  final confirmPasswordError = ''.obs;

  final isCurrentPasswordVisible = true.obs;
  final isNewPasswordVisible = true.obs;
  final isConfirmPasswordVisible = true.obs;

  @override
  void onInit() {
    super.onInit();
    userRepository = Get.find(tag: (UserRepository).toString());
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return appLocalization
          .validation_required(appLocalization.confirmNewPasswordLabel);
    }
    if (value != newPassword.text) {
      return appLocalization.confirm_password_mismatch;
    }
    return null;
  }

  void validateCurrentPassword() {
    currentPasswordError.value = Helpers.validatePassword(
            currentPassword.text, appLocalization,
            fieldName: appLocalization.currentPasswordLabel) ??
        '';
  }

  void validateNewPassword() {
    String? error = Helpers.validateNewPassword(
        newPassword.text, appLocalization,
        fieldName: appLocalization.newPasswordLabel);
    if (error == null && newPassword.text == currentPassword.text) {
      error = appLocalization.password_same_as_current;
    }
    newPasswordError.value = error ?? '';
  }

  void validateConfirmPassword() {
    confirmPasswordError.value =
        _validateConfirmPassword(confirmPassword.text) ?? '';
  }

  Future<void> handleSubmitChangePassword(
      {required String oldPassword, required String newPassword}) async {
    validateCurrentPassword();
    validateNewPassword();
    validateConfirmPassword();

    if (currentPasswordError.value.isEmpty &&
        newPasswordError.value.isEmpty &&
        confirmPasswordError.value.isEmpty) {
      final changePasswordService =
          userRepository.changePassword(oldPassword, newPassword);
      await callDataService(
        changePasswordService,
        onSuccess: (response) async {
          Get.dialog(CustomResultDialog(
              type: DialogType.success,
              message: response.message,
              buttonText: appLocalization.change_password_success_button,
              onPressed: () {
                Get.back();
                Get.back();
              }));
        },
      );
    }
  }

  @override
  void onClose() {
    newPassword.dispose();
    confirmPassword.dispose();
    super.onClose();
  }
}
