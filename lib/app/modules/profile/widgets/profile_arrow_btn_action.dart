import 'package:flutter/material.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';

class ProfileArrowBtnAction extends StatelessWidget {
  final String label;
  final String value;
  final Widget? trailing;
  final VoidCallback? onTap;

  const ProfileArrowBtnAction({
    required this.label,
    required this.value,
    this.trailing,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: getPaddingSymmetric(vertical: 14),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Text(
                label,
                style: TextStyle(
                    color: AppColors.profilelabelTextColor,
                    fontSize: getFontSize(18)),
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                value,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: AppColors.profilevalueTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: getFontSize(18)),
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
