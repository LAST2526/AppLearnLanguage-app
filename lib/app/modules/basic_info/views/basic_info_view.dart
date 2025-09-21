import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/values/enum_values.dart';
import 'package:last02/app/core/widget/date_picker_field.dart';
import 'package:last02/app/core/widget/label_text_field.dart';
import 'package:last02/app/core/widget/select_field.dart';
import 'package:last02/app/modules/basic_info/controllers/basic_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BasicInfoView extends BaseView<BasicInfoController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
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
        appBar: AppBar(
            backgroundColor: AppColors.bgHeaderRegister,
            title: Center(
              child: Text(
                appLocalization.basicInfo,
                style: TextStyle(
                    fontSize: getFontSize(22),
                    color: AppColors.appBarTextColor,
                    fontWeight: FontWeight.w700),
              ),
            )),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16 : 32, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                //Name
                LabelTextField(
                  label: appLocalization.fullName,
                  hintText: '',
                  controller: controller.name,
                  focusNode: controller.nameFocusNode,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (value) {
                    FocusScope.of(context)
                        .requestFocus(controller.nationalityFocusNode);
                  },
                  required: true,
                  maxLength: 64,
                  onChanged: (value) => controller.name.value,
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
                  fieldName: appLocalization.gender,
                ),
                const SizedBox(height: 8),
                //Date of Birth
                Obx(
                  () => DatePickerField(
                    label: appLocalization.birthdateLabel,
                    hintText: 'yyyy/mm/dd',
                    selectedDate: controller.birthdate.value,
                    required: true,
                    onDateSelected: (date) {
                      controller.birthdate.value = date;
                    },
                    fieldName: appLocalization.birthdateLabel,
                  ),
                ),
                const SizedBox(height: 8),
                //Country
                LabelTextField(
                    label: appLocalization.nationality,
                    hintText: '',
                    controller: controller.nationality,
                    focusNode: controller.nationalityFocusNode,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).unfocus();
                    },
                    required: true,
                    maxLength: 64,
                    onChanged: (value) => controller.nationality.value),
                const SizedBox(height: 8),
                Obx(
                  () => SelectField<String>(
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
                      getLabel: (item) => item),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.grammaPrimaryText,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controller.handleSubmit();
                      }
                    },
                    child: Text(
                      appLocalization.save,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
