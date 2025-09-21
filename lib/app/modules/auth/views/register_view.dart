import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/widget/input_field.dart';
import 'package:last02/app/modules/auth/controllers/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/modules/auth/widgets/btn_widget.dart';
import 'package:last02/app/modules/auth/widgets/button_style.dart';

class RegisterView extends BaseView<RegisterController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 90, 24, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10),
                  Center(
                    child: Image.asset(
                      ImageAssets.logoRegisterImg,
                      height: getSize(200),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    appLocalization.registerAccountTitle,
                    style: TextStyle(
                      color: AppColors.grammaPrimaryText,
                      fontSize: getFontSize(22),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: controller.registerWithGoogle,
                    icon: SvgPicture.asset(ImageAssets.logoGoogleImg,
                        fit: BoxFit.contain),
                    label: Text(
                      appLocalization.registerWithGoogle,
                      style: TextStyle(
                        fontSize: getFontSize(16),
                      ),
                    ),
                    style: whiteButtonStyle,
                  ),
                  const SizedBox(height: 12),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                              thickness: 1, color: AppColors.matterGrey)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          appLocalization.or,
                          style: TextStyle(
                              color: AppColors.matterGrey,
                              fontSize: getFontSize(14)),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                              thickness: 1, color: AppColors.matterGrey)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  InputField(
                    label: appLocalization.emailLabel,
                    hintText: '',
                    iconData: null,
                    controller: controller.email,
                    focusNode: controller.emailFocus,
                    onFieldSubmitted: (_) {
                      controller.validateEmail();
                      FocusScope.of(context)
                          .requestFocus(controller.passwordFocus);
                    },
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      controller.email.text = value;
                      controller.validateEmail();
                    },
                    required: true,
                    errorText: controller.emailError,
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    label: appLocalization.passwordLabel,
                    hintText: '',
                    iconData: const IconData(1),
                    controller: controller.password,
                    obscureText: controller.isPasswordVisible,
                    focusNode: controller.passwordFocus,
                    onFieldSubmitted: (_) {
                      controller.validatePassword();
                      FocusScope.of(context)
                          .requestFocus(controller.confirmPasswordFocus);
                    },
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      controller.password.text = value;
                      controller.validatePassword();
                    },
                    required: true,
                    onToggleVisibility: () {
                      controller.isPasswordVisible.value =
                          !controller.isPasswordVisible.value;
                    },
                    errorText: controller.passwordError,
                  ),
                  const SizedBox(height: 12),
                  InputField(
                    label: appLocalization.confirmPassword,
                    hintText: '',
                    iconData: const IconData(1),
                    controller: controller.confirmPassword,
                    obscureText: controller.isconfirmPasswordVisible,
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
                      controller.isconfirmPasswordVisible.value =
                          !controller.isconfirmPasswordVisible.value;
                    },
                    errorText: controller.confirmPasswordError,
                  ),
                  const SizedBox(height: 20),
                  BtnWidget(
                    onPressed: () => controller.registerByEmail(
                        email: controller.email.text),
                    label: appLocalization.registerButton,
                    style: greenButtonStyle,
                  ),
                  const SizedBox(height: 20),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          appLocalization.alreadyHaveAccount,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getFontSize(16)),
                        ),
                        const SizedBox(width: 4),
                        GestureDetector(
                          onTap: controller.goToLogin,
                          child: Text(
                            appLocalization.loginButton,
                            style: TextStyle(
                              color: AppColors.grammaPrimaryText,
                              fontWeight: FontWeight.bold,
                              fontSize: getFontSize(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
