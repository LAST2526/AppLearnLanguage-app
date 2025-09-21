import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/debounce_tap.dart';
import 'package:last02/app/core/utils/helpers.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:last02/app/modules/auth/widgets/language_dropdown.dart';
import 'package:last02/app/modules/profile/widgets/profile_arrow_btn_action.dart';
import 'package:last02/app/modules/profile/widgets/profile_avatar.dart';
import 'package:last02/app/modules/profile/widgets/profile_group_row.dart';
import 'package:last02/app/modules/profile/widgets/profile_row_info.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends BaseView<ProfileController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: Text(
        appLocalization.account_label,
        style: TextStyle(
            color: AppColors.appBarTextColor,
            fontSize: getFontSize(22),
            fontWeight: FontWeight.w700),
      ),
      backgroundColor: AppColors.bgHeaderRegister,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.appBarIconColor),
        onPressed: () => Get.back(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                if (DebounceTap.canTap('goToUpdateProfile')) {
                  controller.goToUpdateProfile();
                }
              },
              borderRadius: BorderRadius.circular(999),
              child: Container(
                height: getSize(36),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: AppColors.editAppBarBg,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      ImageAssets.iconEditUser,
                      width: getSize(24),
                      height: getSize(24),
                    ),
                    Text(
                      appLocalization.update_info,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: getFontSize(16),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget body(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: getPaddingSymmetric(horizontal: 16, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(() => ProfileAvatar(
                    avatarUrl: controller.member.value?.avatarUrl)),
                SizedBox(height: getVerticalSize(12)),
                Obx(() => Text(
                      controller.member.value?.fullName ?? '',
                      style: TextStyle(
                        fontSize: getFontSize(22),
                        fontWeight: FontWeight.w700,
                        color: AppColors.fullNameTextColor,
                      ),
                    )),
                SizedBox(height: getVerticalSize(24)),
                Obx(() {
                  return ProfileGroupRow(
                    title: appLocalization.user_info,
                    children: [
                      ProfileRowInfo(
                          label: appLocalization.emailProfile,
                          value: controller.userName.value),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColors.onlyBottomBorder,
                      ),
                      ProfileRowInfo(
                          label: appLocalization.name,
                          value: controller.member.value?.fullName ?? ''),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColors.onlyBottomBorder,
                      ),
                      ProfileRowInfo(
                          label: appLocalization.gender,
                          value: controller
                              .getGender(controller.member.value?.gender ?? 0)),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColors.onlyBottomBorder,
                      ),
                      ProfileRowInfo(
                          label: appLocalization.birthdateLabel,
                          value: controller.member.value?.dob != null
                              ? Helpers.formatDate(DateTime.tryParse(
                                  controller.member.value?.dob ?? ''))
                              : ''),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColors.onlyBottomBorder,
                      ),
                      ProfileRowInfo(
                          label: appLocalization.nationality,
                          value: controller.member.value?.nationality ?? ''),
                      const Divider(
                        height: 1,
                        thickness: 1,
                        color: AppColors.onlyBottomBorder,
                      ),
                      ProfileRowInfo(
                          label: appLocalization.course,
                          value: controller.courseTitle.value),
                    ],
                  );
                }),
                ProfileGroupRow(
                  title: appLocalization.system_setting,
                  children: [
                    ProfileArrowBtnAction(
                      label: appLocalization.change_password,
                      value: '',
                      trailing: SvgPicture.asset(
                        ImageAssets.arrowRight,
                        width: getSize(24),
                        height: getSize(24),
                      ),
                      onTap: controller.goToChangePassword,
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.onlyBottomBorder,
                    ),
                    ProfileArrowBtnAction(
                      label: appLocalization.language_setting,
                      value: '',
                      trailing: LanguageDropdown(
                        controller: controller.loginController,
                        buttonWidth: size.width * 0.32,
                        dropdownWidth: size.width * 0.45,
                      ),
                    ),
                    const Divider(
                      height: 1,
                      thickness: 1,
                      color: AppColors.onlyBottomBorder,
                    ),
                  ],
                ),
                SizedBox(height: getVerticalSize(24)),
                SizedBox(
                  width: getSize(260),
                  height: getSize(54),
                  child: OutlinedButton(
                    onPressed: controller.handleSignOut,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: AppColors.colorWhite,
                      side: const BorderSide(
                        color: AppColors.logoutButtonColor,
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          appLocalization.log_out,
                          style: TextStyle(
                            fontSize: getFontSize(18),
                            color: AppColors.logoutButtonColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(width: getHorizontalSize(8)),
                        SvgPicture.asset(ImageAssets.iconLogout,
                            width: getSize(24), height: getSize(24)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
