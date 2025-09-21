import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum DialogType { success, error }

class CustomResultDialog extends StatelessWidget {
  final DialogType type;
  final String message;
  final String buttonText;
  final VoidCallback onPressed;

  const CustomResultDialog({
    super.key,
    required this.type,
    required this.message,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isSuccess = type == DialogType.success;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: Get.width * 0.9,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              child: Image.asset(
                isSuccess ? ImageAssets.success : ImageAssets.error,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isSuccess
                            ? AppColors.greenAuthScreenColor
                            : AppColors.errorColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        buttonText,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
