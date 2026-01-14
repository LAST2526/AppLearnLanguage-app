import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/modules/flash_card/controllers/flash_card_controller.dart';
import 'package:last02/app/modules/flash_card/widgets/swipe_guide_text.dart';
import 'package:last02/app/modules/flash_card/widgets/swipe_result_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:last02/l10n/app_localizations.dart';

class BackCardContainer extends StatelessWidget {
  final FlashCardController controller;
  final AppLocalizations appLocalization;
  final double widthMedia;
  final double heightMedia;
  final String mainText;
  final String imageUrl;
  final String subText;
  final String translateText;
  final List<String> example;

  const BackCardContainer({
    super.key,
    required this.controller,
    required this.appLocalization,
    required this.widthMedia,
    required this.heightMedia,
    required this.mainText,
    required this.imageUrl,
    required this.subText,
    required this.translateText,
    required this.example,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightMedia,
      decoration: _containerDecoration(),
      child: Padding(
        padding: getPadding(all: 8),
        child: Column(
          children: [
            Obx(() => controller.showGuideText.value
                ? SwipeGuideBanner(
                    appLocalization: appLocalization, width: widthMedia)
                : const SizedBox.shrink()),
            Obx(() => controller.showBadgeResult.value
                ? SwipeResultRow(
                    directionSwipe: controller.swipeDirection.value,
                    widthMedia: widthMedia)
                : const SizedBox.shrink()),
            Expanded(child: _buildCardContent(context)),
          ],
        ),
      ),
    );
  }

  BoxDecoration _containerDecoration() => BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5)
        ],
      );

  Widget _buildCardContent(BuildContext context) {
    return Column(
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
        SizedBox(height: getVerticalSize(widthMedia * 0.03)),
        GestureDetector(
          onTap: () => controller.speakAudio(mainText),
          child: Obx(() => SpeakerRow(
                controller: controller,
                text: mainText,
                isSpeaking: controller.currentlySpeaking.value == mainText,
                iconSize: getSize(40),
                spacing: widthMedia * 0.02,
                textStyle: TextStyle(
                    fontSize: getFontSize(32), fontWeight: FontWeight.w700),
                alignment: MainAxisAlignment.center,
              )),
        ),
        SizedBox(height: getVerticalSize(widthMedia * 0.03)),
        _buildSubText(subText),
        SizedBox(height: getVerticalSize(widthMedia * 0.03)),
        _buildSubText(translateText),
        SizedBox(height: getVerticalSize(widthMedia * 0.08)),
        Divider(
            indent: widthMedia * 0.05,
            endIndent: widthMedia * 0.05,
            thickness: 1.5,
            color: const Color(0xFFECECEC)),
        _buildExampleList(),
      ],
    );
  }

  Widget _buildSubText(String text) => Text(
        text,
        style: TextStyle(
            fontSize: getFontSize(widthMedia * 0.05),
            color: AppColors.disabledColor),
      );

  Widget _buildExampleList() => Padding(
        padding: getPadding(left: 18, top: 28),
        child: Column(
          children: example
              .where((sentence) => sentence.trim().isNotEmpty)
              .map((sentence) => Padding(
                    padding: EdgeInsets.only(
                        bottom: getVerticalSize(heightMedia * 0.02)),
                    child: GestureDetector(
                      onTap: () {
                        if (controller.isJapanese(sentence)) {
                          controller.speakAudio(sentence);
                        }
                      },
                      child: Obx(() => SpeakerRow(
                            controller: controller,
                            text: sentence,
                            isSpeaking:
                                controller.currentlySpeaking.value == sentence,
                            iconSize: getSize(24),
                            spacing: widthMedia * 0.02,
                            textStyle: TextStyle(
                              fontSize: getFontSize(widthMedia * 0.045),
                              fontWeight: FontWeight.w500,
                              color: AppColors.mainFCtextColor,
                            ),
                            alignment: MainAxisAlignment.start,
                          )),
                    ),
                  ))
              .toList(),
        ),
      );
}

class SwipeResultRow extends StatelessWidget {
  final SwipeDirectionType? directionSwipe;
  final double widthMedia;

  const SwipeResultRow(
      {super.key, required this.directionSwipe, required this.widthMedia});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: directionSwipe == SwipeDirectionType.right
          ? [
              SwipeResultBadge(
                  direction: SwipeDirectionType.right, widthMedia: widthMedia),
              const SizedBox(width: 48)
            ]
          : [
              const SizedBox(width: 48),
              SwipeResultBadge(
                  direction: SwipeDirectionType.left, widthMedia: widthMedia)
            ],
    );
  }
}

class SwipeGuideBanner extends StatelessWidget {
  final AppLocalizations appLocalization;
  final double width;

  const SwipeGuideBanner(
      {super.key, required this.appLocalization, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SwipeGuideText(
          iconPath: ImageAssets.arrowRed,
          smallText: appLocalization.left_guide_normal,
          boldText: appLocalization.left_guide_bold,
          textColor: AppColors.guideRedTextColor,
          alignment: CrossAxisAlignment.start,
        ),
        SwipeGuideText(
          iconPath: ImageAssets.arrowGreen,
          smallText: appLocalization.right_guide_normal,
          boldText: appLocalization.right_guide_bold,
          textColor: AppColors.guideGreenTextColor,
          alignment: CrossAxisAlignment.end,
        ),
      ],
    );
  }
}

class SpeakerRow extends StatelessWidget {
  final FlashCardController controller;
  final String text;
  final bool isSpeaking;
  final double iconSize;
  final double spacing;
  final TextStyle textStyle;
  final MainAxisAlignment alignment;

  const SpeakerRow(
      {super.key,
      required this.controller,
      required this.text,
      required this.isSpeaking,
      required this.iconSize,
      required this.spacing,
      required this.textStyle,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    if (text.trim().isEmpty) return const SizedBox.shrink();

    final isJapanese = controller.isJapanese(text);
    if (!isJapanese) {
      return Padding(
        padding: EdgeInsets.only(
          left: iconSize + spacing,
          top: 4,
          bottom: 4,
        ),
        child: Text(
          text,
          style: textStyle,
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: iconSize + spacing),
                child: Text(
                  text,
                  style: textStyle,
                ),
              ),
              Positioned(
                left: 0,
                top: _calculateTopOffset(textStyle),
                child: Opacity(
                  opacity: isSpeaking ? 1.0 : 0.5,
                  child: SvgPicture.asset(
                    ImageAssets.speakerIcon,
                    width: iconSize,
                    height: iconSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  double _calculateTopOffset(TextStyle style) {
    return style.fontSize != null ? style.fontSize! * 0.25 : 0;
  }
}
