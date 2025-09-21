import 'package:last02/app/core/utils/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwipeGuideText extends StatelessWidget {
  final String iconPath;
  final String smallText;
  final String boldText;
  final Color textColor;
  final CrossAxisAlignment alignment;

  const SwipeGuideText({
    super.key,
    required this.iconPath,
    required this.smallText,
    required this.boldText,
    required this.textColor,
    this.alignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        SvgPicture.asset(
          iconPath,
          width: getSize(24),
          height: getSize(24),
        ),
        Text(
          smallText,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: getFontSize(15),
          ),
        ),
        Text(
          boldText,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w700,
            fontSize: getFontSize(14),
          ),
        ),
      ],
    );
  }
}
