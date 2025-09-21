import 'package:last02/app/core/utils/math_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListenPracticeItem extends StatelessWidget {
  final String title;
  final Color color;
  final String imageAsset;
  final VoidCallback? onTap;

  const ListenPracticeItem({
    required this.title,
    required this.color,
    required this.imageAsset,
    super.key,
    this.onTap,
  });

  bool get isSvg => imageAsset.endsWith('.svg');

  @override
  Widget build(BuildContext context) {
    final iconWidget = SvgPicture.asset(
      imageAsset,
      width: getSize(70),
      height: getSize(70),
    );

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconWidget,
                  const SizedBox(height: 8),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: getFontSize(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
