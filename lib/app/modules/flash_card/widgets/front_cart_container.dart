import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/modules/flash_card/controllers/flash_card_controller.dart';
import 'package:flutter/material.dart';

class FrontCardContainer extends StatelessWidget {
  final FlashCardController controller;
  final String mainText;
  final String imageUrl;
  final double widthMedia;
  final double heightMedia;

  const FrontCardContainer({
    super.key,
    required this.controller,
    required this.mainText,
    required this.imageUrl,
    required this.widthMedia,
    required this.heightMedia,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightMedia,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          )
        ],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              ImageAssets.flashcardDefault,
              width: getSize(widthMedia * 0.3),
            ),
            // imageUrl.isNotEmpty
            //     ? Image.network(
            //         imageUrl,
            //         width: getSize(widthMedia * 0.33),
            //         height: getSize(widthMedia * 0.33),
            //       )
            //     : Image.asset(
            //         ImageAssets.flashcardDefault,
            //         width: getSize(widthMedia * 0.3),
            //       ),
            SizedBox(height: getHorizontalSize(widthMedia * 0.03)),
            Text(
              mainText,
              style: TextStyle(
                  color: AppColors.mainFCtextColor,
                  fontSize: getFontSize(28),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: getVerticalSize(8)),
          ],
        ),
      ),
    );
  }
}
