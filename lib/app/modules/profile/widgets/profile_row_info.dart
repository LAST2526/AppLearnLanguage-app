import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileRowInfo extends StatelessWidget {
  final String label;
  final String value;

  const ProfileRowInfo({
    required this.label,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPaddingSymmetric(vertical: 14),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              label,
              style: TextStyle(
                color: AppColors.profilelabelTextColor,
                fontSize: getFontSize(18),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: AppColors.profilevalueTextColor,
                fontWeight: FontWeight.bold,
                fontSize: getFontSize(18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
