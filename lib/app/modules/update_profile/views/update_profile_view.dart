import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/values/enum_values.dart';
import 'package:last02/app/core/widget/date_picker_field.dart';
import 'package:last02/app/core/widget/label_text_field.dart';
import 'package:last02/app/core/widget/select_field.dart';
import 'package:last02/app/modules/auth/widgets/debounce_button.dart';
import 'package:last02/app/modules/update_profile/controllers/update_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:last02/app/modules/update_profile/widgets/upload_profile_avatar.dart';

class UpdateProfileView extends BaseView<UpdateProfileController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: Text(
        appLocalization.update_info_label,
        style: TextStyle(
            color: AppColors.colorWhite,
            fontWeight: FontWeight.w700,
            fontSize: getFontSize(22)),
      ),
      iconTheme: const IconThemeData(color: AppColors.colorWhite),
      centerTitle: true,
      backgroundColor: AppColors.bgHeaderRegister,
      actions: [
        Padding(
          padding: getPadding(right: 12),
          child: DebouncedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                controller.handleSubmit();
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.bgBtnSave,
                borderRadius: BorderRadius.circular(32),
              ),
              padding: getPadding(left: 14, right: 14, top: 6, bottom: 6),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    ImageAssets.iconSave,
                    width: getSize(24),
                    height: getSize(24),
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    appLocalization.update_confirm,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getFontSize(16),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget body(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      behavior: HitTestBehavior.translucent,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16 : 32, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                UploadProfileAvatar(
                  avatarUrl: controller.avatarUrl.value,
                  pickedImage: controller.pickedImage,
                  updateProfileController: controller,
                  appLocalization: appLocalization,
                ),
                SizedBox(height: getVerticalSize(24)),
                //Email
                LabelTextField(
                  label: appLocalization.emailProfile,
                  hintText: '',
                  controller: controller.email,
                  onChanged: (value) => controller.email.value,
                  readOnly: true,
                ),
                const SizedBox(height: 8),
                //Name
                LabelTextField(
                  label: appLocalization.name,
                  hintText: '',
                  controller: controller.fullName,
                  focusNode: controller.nameFocusNode,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (value) {
                    FocusScope.of(context)
                        .requestFocus(controller.countryFocusNode);
                  },
                  required: true,
                  maxLength: 64,
                  onChanged: (value) => controller.fullName.value,
                ),
                const SizedBox(height: 8),
                //Gender
                SelectField<Gender>(
                  label: appLocalization.gender,
                  hintText: '',
                  options: controller.genders,
                  value: controller.selectedGender.value,
                  required: true,
                  onChanged: (value) => controller.selectedGender.value = value,
                  getLabel: (selectedGender) =>
                      selectedGender.localized(context),
                ),
                const SizedBox(height: 8),
                //Date of Birth
                Obx(
                  () => DatePickerField(
                      label: appLocalization.birthdateLabel,
                      hintText: 'yyyy/mm/dd',
                      selectedDate: controller.birthdate.value,
                      required: true,
                      validator: (value) {
                        if (value == null) {
                          return ' ';
                        }
                        return null;
                      },
                      onDateSelected: (date) {
                        controller.birthdate.value = date;
                      }),
                ),
                const SizedBox(height: 8),
                //Country
                LabelTextField(
                    label: appLocalization.nationality,
                    hintText: '',
                    controller: controller.nationality,
                    focusNode: controller.countryFocusNode,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).unfocus();
                    },
                    required: true,
                    maxLength: 64,
                    onChanged: (value) => controller.nationality.value),
                const SizedBox(height: 8),
                Obx(() => SelectField<String>(
                    label: appLocalization.course,
                    hintText: '',
                    options: controller.courseList
                        .where((course) => course.title == 'N5')
                        .map((course) => course.title)
                        .toList(),
                    value: controller.course.value,
                    onChanged: (value) {
                      controller.course.value = value;
                    },
                    required: true,
                    getLabel: (item) => item)),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
