import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileGroupRow extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const ProfileGroupRow({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 12, 12, 4),
          child: Text(
            title,
            style: TextStyle(
              fontSize: getFontSize(18),
              fontWeight: FontWeight.w700,
              color: AppColors.profileTitleColor,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: getPadding(bottom: 12),
          decoration: BoxDecoration(
            color: AppColors.colorWhite,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: getPaddingSymmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: children,
          ),
        ),
      ],
    );
  }
}
