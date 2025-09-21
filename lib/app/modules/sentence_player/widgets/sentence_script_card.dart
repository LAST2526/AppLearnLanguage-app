import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/modules/sentence_player/controllers/sentence_player_controller.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/l10n/app_localizations.dart';

class SentenceScriptCard extends StatelessWidget {
  final SentencePlayerController controller;
  final AppLocalizations appLocalization;
  final String text;

  const SentenceScriptCard({
    super.key,
    required this.controller,
    required this.appLocalization,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final show = controller.showScript.value;

      return Container(
        height: size.height * 0.5,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color:
                show ? AppColors.borderShowScript : AppColors.borderHideScript,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: show
              ? const [
                  BoxShadow(
                    color: AppColors.blurColor,
                    offset: Offset(0, 4),
                    blurRadius: 18,
                  ),
                ]
              : [
                  BoxShadow(
                    color: AppColors.hideBlurColor,
                    blurRadius: 4,
                    blurStyle: BlurStyle.inner,
                  ),
                ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.loose,
            children: [
              if (show)
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(color: Colors.white.withOpacity(0.5)),
                ),
              Column(
                children: [
                  Padding(
                    padding: getPadding(top: 12, right: 12, left: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Visibility(
                          visible: show,
                          child: GestureDetector(
                            behavior: HitTestBehavior.translucent,
                            onTap: () {
                              controller.changeLocaleScript();
                            },
                            child: Container(
                              padding: getPadding(right: 16, bottom: 8, top: 8),
                              child: SvgPicture.asset(
                                _getFlagAsset(controller.currentLocale.value),
                                width: getSize(30),
                                height: getSize(30),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              appLocalization.show_script,
                              style: TextStyle(
                                color: AppColors.switchTextColor,
                                fontWeight: FontWeight.w500,
                                fontSize: getFontSize(14),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Obx(() => GestureDetector(
                                  onTap: () => controller.showScript.toggle(),
                                  child: SvgPicture.asset(
                                    controller.showScript.value
                                        ? ImageAssets.showScript
                                        : ImageAssets.hideScript,
                                    width: getSize(30),
                                    height: getSize(30),
                                  ),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  if (show)
                    Expanded(
                      child: SingleChildScrollView(
                        child: Center(
                          child: Html(
                            data: text,
                            style: {
                              "html": Style(
                                fontSize: FontSize(getFontSize(20)),
                                color: AppColors.sentenceTextColor,
                              ),
                            },
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }

  String _getFlagAsset(String? locale) {
    switch (locale) {
      case 'vi':
        return ImageAssets.vietNamFlag;
      case 'en':
        return ImageAssets.englandFlag;
      default:
        return ImageAssets.japanFlag;
    }
  }
}
