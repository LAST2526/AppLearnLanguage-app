import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';

final ButtonStyle blackButtonStyle = ElevatedButton.styleFrom(
  minimumSize: const Size.fromHeight(50),
  backgroundColor: Colors.black,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);
final ButtonStyle greenButtonStyle = ElevatedButton.styleFrom(
  minimumSize: const Size.fromHeight(50),
  backgroundColor: AppColors.greenAuthScreenColor,
  foregroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
  textStyle: TextStyle(
    fontSize: getFontSize(18),
    fontWeight: FontWeight.bold,
  ),
);
final ButtonStyle whiteButtonStyle = ElevatedButton.styleFrom(
  minimumSize: const Size.fromHeight(50),
  backgroundColor: Colors.transparent,
  foregroundColor: Colors.black87,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
    side: BorderSide(color: AppColors.borderColor),
  ),
  shadowColor: Colors.transparent,
  textStyle: TextStyle(
    fontSize: getFontSize(16),
    fontWeight: FontWeight.w700,
  ),
);
