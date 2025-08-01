import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/widget/input_field.dart';
import 'package:last02/app/data/models/auth/login/login_email_request.dart';
import 'package:last02/app/modules/auth/controllers/login_controller.dart';
import 'package:last02/app/modules/auth/widgets/btn_widget.dart';
import 'package:last02/app/modules/auth/widgets/button_style.dart';

class LoginView extends BaseView<LoginController> {
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
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 90, 24, 0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 10),
                    Center(
                      child: Image.asset(
                        ImageAssets.logoLogin,
                        height: getSize(160),
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      appLocalization.loginButton,
                      style: TextStyle(
                        color: AppColors.greenAuthScreenColor,
                        fontSize: getFontSize(22),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    const SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () {
                        // controller.loginWithGoogle(forceChooseAccount: true)
                      },
                      icon: SvgPicture.asset('images/ic_google.svg',
                          width: getSize(24),
                          height: getSize(24),
                          fit: BoxFit.contain),
                      label: Text(
                        appLocalization.loginByGoogle,
                        style: TextStyle(
                          fontSize: getFontSize(16),
                        ),
                      ),
                      style: whiteButtonStyle,
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(height: 14),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                                thickness: 1, color: AppColors.matterGrey),
                          ),
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
                                thickness: 1, color: AppColors.matterGrey),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
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
                        controller.validateEmail();
                      },
                      required: true,
                      errorText: controller.emailError,
                    ),
                    const SizedBox(height: 8),
                    InputField(
                      label: appLocalization.passwordLabel,
                      hintText: '',
                      iconData: const IconData(1),
                      controller: controller.password,
                      obscureText: controller.isPasswordVisible,
                      focusNode: controller.passwordFocus,
                      onFieldSubmitted: (_) {
                        controller.validatePassword();
                        FocusScope.of(context).unfocus();
                      },
                      textInputAction: TextInputAction.done,
                      onChanged: (value) {
                        controller.validatePassword();
                      },
                      required: true,
                      onToggleVisibility: () {
                        controller.isPasswordVisible.value =
                            !controller.isPasswordVisible.value;
                      },
                      errorText: controller.passwordError,
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: controller.goToForgotPassword,
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(0, 0),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          appLocalization.forgotPassword,
                          style: TextStyle(
                            fontSize: getFontSize(14),
                            color: AppColors.greenAuthScreenColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: getVerticalSize(48)),
                    BtnWidget(
                      onPressed: () => controller.loginByEmail(
                          LoginEmailRequest(
                              email: controller.email.text,
                              password: controller.password.text)),
                      label: appLocalization.loginButton,
                      style: greenButtonStyle,
                    ),
                    const SizedBox(height: 20),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            appLocalization.noAccount,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getFontSize(16),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          GestureDetector(
                            onTap: controller.goToRegister,
                            child: Text(
                              appLocalization.registerButton,
                              style: TextStyle(
                                color: AppColors.greenAuthScreenColor,
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
            ),
            // const Positioned(
            //   top: 60,
            //   right: 10,
            //   child: LanguageDropdown(),
            // ),
          ],
        ),
      ),
    );
  }
}
