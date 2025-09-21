import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/modules/change_password/controllers/change_password_controller.dart';

import '/app/core/widget/input_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordView extends BaseView<ChangePasswordController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget body(BuildContext context) {
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              SafeArea(
                child: isKeyboardOpen
                    ? SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                          child: _buildFormContent(context),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: _buildFormContent(context),
                      ),
              ),
              //Back button
              Positioned(
                top: getVerticalSize(40),
                left: getHorizontalSize(20),
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(55, 58, 58, 1),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }

  Widget _buildFormContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: size.height * 0.03),
        Center(
          child: Image.asset(
            ImageAssets.logoChangePwImg,
            height: size.height * 0.25,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          appLocalization.changePasswordTitle,
          style: const TextStyle(
            color: AppColors.grammaPrimaryText,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Center(
          child: SizedBox(
            width: size.width * 0.8,
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    //Current Password
                    InputField(
                      label: appLocalization.currentPasswordLabel,
                      hintText: '',
                      controller: controller.currentPassword,
                      obscureText: controller.isCurrentPasswordVisible,
                      focusNode: controller.currentPasswordFocus,
                      onFieldSubmitted: (_) {
                        controller.validateCurrentPassword();
                        FocusScope.of(context)
                            .requestFocus(controller.newPasswordFocus);
                      },
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        controller.currentPassword.text = value;
                        controller.validateCurrentPassword();
                      },
                      required: true,
                      onToggleVisibility: () {
                        controller.isCurrentPasswordVisible.value =
                            !controller.isCurrentPasswordVisible.value;
                      },
                      errorText: controller.currentPasswordError,
                    ),
                    //New Password
                    InputField(
                      label: appLocalization.newPasswordLabel,
                      hintText: '',
                      controller: controller.newPassword,
                      obscureText: controller.isNewPasswordVisible,
                      focusNode: controller.newPasswordFocus,
                      onFieldSubmitted: (_) {
                        controller.validateNewPassword();
                        FocusScope.of(context)
                            .requestFocus(controller.confirmPasswordFocus);
                      },
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        controller.newPassword.text = value;
                        controller.validateNewPassword();
                      },
                      required: true,
                      onToggleVisibility: () {
                        controller.isNewPasswordVisible.value =
                            !controller.isNewPasswordVisible.value;
                      },
                      errorText: controller.newPasswordError,
                    ),
                    //Confirm Password
                    InputField(
                      label: appLocalization.confirmNewPasswordLabel,
                      hintText: '',
                      controller: controller.confirmPassword,
                      obscureText: controller.isConfirmPasswordVisible,
                      focusNode: controller.confirmPasswordFocus,
                      onFieldSubmitted: (_) {
                        controller.validateConfirmPassword();
                        FocusScope.of(context).unfocus();
                      },
                      textInputAction: TextInputAction.done,
                      onChanged: (value) {
                        controller.confirmPassword.text = value;
                        controller.validateConfirmPassword();
                      },
                      required: true,
                      onToggleVisibility: () {
                        controller.isConfirmPasswordVisible.value =
                            !controller.isConfirmPasswordVisible.value;
                      },
                      errorText: controller.confirmPasswordError,
                    ),
                    const SizedBox(height: 20),
                    Row(children: [
                      Expanded(
                        flex: 5,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(163, 163, 163, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              appLocalization.cancel,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 6,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.grammaPrimaryText,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                controller.handleSubmitChangePassword(
                                    oldPassword:
                                        controller.currentPassword.text,
                                    newPassword: controller.newPassword.text);
                              }
                            },
                            child: Text(
                              appLocalization.saveChanges,
                              style: const TextStyle(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ],
                )),
          ),
        )
      ],
    );
  }
}
