import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String svgAsset;
  final String title;
  final Widget? subContent;

  const SectionTitle({
    super.key,
    required this.svgAsset,
    required this.title,
    this.subContent,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      fontSize: getFontSize(28),
      fontWeight: FontWeight.bold,
      color: AppColors.textColorPrimary,
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: getPadding(top: 4),
          child: SvgPicture.asset(
            svgAsset,
            height: 44,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: titleStyle),
                  if (subContent != null) ...[
                    SizedBox(
                      width: constraints.maxWidth * 2 / 3,
                      child: subContent!,
                    ),
                  ],
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
