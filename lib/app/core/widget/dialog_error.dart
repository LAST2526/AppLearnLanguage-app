import 'package:last02/app/core/base/base_widge_mixin.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/values/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DialogError extends StatelessWidget with BaseWidgetMixin {
  final String message;

  final Function? onConfirm;

  DialogError({super.key, required this.message, this.onConfirm});
  @override
  Widget body(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.textColorWhite,
      elevation: 0,
      insetPadding: const EdgeInsets.all(32),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              ImageAssets.error,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 8,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  appLocalization.error_common,
                  style: TextStyle(
                    fontSize: getFontSize(24),
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(24),
                ),
                SvgPicture.asset(ImageAssets.iconError),
                SizedBox(
                  height: getVerticalSize(12),
                ),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: getFontSize(16),
                    fontWeight: FontWeight.w600,
                    color: AppColors.blackColor,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (onConfirm != null) {
                      Get.back();
                      onConfirm!();
                    } else {
                      Get.back();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.greenAuthScreenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: const Size.fromHeight(48),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: Text(
                    appLocalization.closeDialogNotify,
                    style: dialogtext,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
