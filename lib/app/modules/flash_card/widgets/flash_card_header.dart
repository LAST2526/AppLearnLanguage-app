import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/values/enum_values.dart';
import 'package:last02/app/modules/flash_card/controllers/flash_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/l10n/app_localizations.dart';

class FlashCardHeader extends StatelessWidget {
  final FlashCardController controller;
  final AppLocalizations appLocalization;

  const FlashCardHeader({
    super.key,
    required this.controller,
    required this.appLocalization,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPaddingSymmetric(horizontal: 16),
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _HeaderStat(
              title: '${controller.flashCardDataList.length}',
              subtitle: appLocalization.learn_to_study,
              isSelected: controller.selectedTabIndex.value ==
                  FlashCardStatus.newCard.indexValue,
              onTap: () => controller.selectTab(FlashCardStatus.newCard),
            ),
            _HeaderStat(
              title: '${controller.flashCardForgotList.length}',
              subtitle: appLocalization.known,
              isSelected: controller.selectedTabIndex.value ==
                  FlashCardStatus.forgotten.indexValue,
              onTap: () => controller.selectTab(FlashCardStatus.forgotten),
            ),
            _HeaderStat(
              title: '${controller.flashCardMemoryList.length}',
              subtitle: appLocalization.learned,
              isSelected: controller.selectedTabIndex.value ==
                  FlashCardStatus.memorized.indexValue,
              onTap: () => controller.selectTab(FlashCardStatus.memorized),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderStat extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isSelected;
  final VoidCallback? onTap;

  const _HeaderStat({
    required this.title,
    required this.subtitle,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final widthMedia = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IntrinsicWidth(
            child: Container(
              padding: getPadding(
                left: 12,
                right: 12,
              ),
              height: widthMedia * 0.15,
              decoration: BoxDecoration(
                color: AppColors.bgTabFcColor,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isSelected
                      ? AppColors.greenAuthScreenColor
                      : Colors.transparent,
                  width: 2,
                ),
                boxShadow: isSelected
                    ? [
                        const BoxShadow(
                          color: AppColors.greenAuthScreenColor,
                          blurStyle: BlurStyle.inner,
                          blurRadius: 9,
                        )
                      ]
                    : [],
              ),
              child: Padding(
                padding: getPadding(top: widthMedia * 0.01),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: getFontSize(widthMedia * 0.05),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: getFontSize(widthMedia * 0.04),
                        color: AppColors.subTitleFCtextColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
