import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/widget/date_picker_field.dart';
import 'package:last02/app/core/widget/input_field.dart';
import 'package:last02/app/modules/auth/widgets/btn_widget.dart';
import 'package:last02/app/modules/auth/widgets/button_style.dart';
import 'package:last02/app/modules/forgot_password/controllers/forgot_password_controller.dart';

class ForgotPasswordView extends BaseView<ForgotPasswordController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarTextColor,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.blackColor),
        onPressed: () => Get.back(),
      ),
    );
  }

  @override
  Widget body(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(children: [
            Padding(
              padding: getPadding(all: 24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(ImageAssets.logoForgotPwImg,
                        fit: BoxFit.contain, height: getSize(250)),
                    Center(
                      child: Text(
                        appLocalization.resetPassword,
                        style: TextStyle(
                          fontSize: getFontSize(22),
                          color: AppColors.grammaPrimaryText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    InputField(
                      label: appLocalization.emailLabel,
                      hintText: '',
                      iconData: null,
                      controller: controller.email,
                      focusNode: controller.emailFocus,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        controller.email.text = value;
                        controller.validateEmail();
                      },
                      required: true,
                      errorText: controller.emailError,
                    ),
                    SizedBox(height: getVerticalSize(32)),
                    Obx(
                      () => controller.errorMessage.isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: Text(
                                controller.errorMessage,
                                style: const TextStyle(
                                    color: AppColors.errorColor),
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                    BtnWidget(
                      onPressed: () =>
                          controller.sendResetRequest(controller.email.text),
                      label: appLocalization.sendEmail,
                      style: greenButtonStyle,
                    ),
                    SizedBox(height: getVerticalSize(32)),
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
