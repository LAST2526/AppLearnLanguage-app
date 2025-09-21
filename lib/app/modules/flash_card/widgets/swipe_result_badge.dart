import 'package:flutter/material.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:get/get.dart';
import 'package:last02/l10n/app_localizations.dart';

enum SwipeDirectionType { left, right }

class SwipeResultBadge extends StatelessWidget {
  final SwipeDirectionType direction;
  final double widthMedia;
  final appLocalization = AppLocalizations.of(Get.context!)!;
  SwipeResultBadge({
    Key? key,
    required this.direction,
    required this.widthMedia,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isRight = direction == SwipeDirectionType.right;
    final badgeText =
        isRight ? appLocalization.known_label : appLocalization.unknown_label;
    final badgeColor =
        isRight ? AppColors.guideGreenTextColor : AppColors.guideRedTextColor;

    return Container(
      alignment: Alignment.center,
      padding: getPadding(
        top: getVerticalSize(6),
        bottom: getVerticalSize(6),
        left: getHorizontalSize(12),
        right: getHorizontalSize(12),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: badgeColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        badgeText,
        softWrap: false,
        overflow: TextOverflow.visible,
        style: TextStyle(
          color: badgeColor,
          fontWeight: FontWeight.w700,
          fontSize: getFontSize(widthMedia * 0.06),
        ),
      ),
    );
  }
}
