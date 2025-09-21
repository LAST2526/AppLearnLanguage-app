import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/modules/sentence_player/controllers/sentence_player_controller.dart';
import 'package:last02/l10n/app_localizations.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/utils/math_utils.dart';

class SentenceControls extends StatelessWidget {
  final SentencePlayerController controller;
  final AppLocalizations appLocalization;

  const SentenceControls({
    super.key,
    required this.controller,
    required this.appLocalization,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx(() => _buildIconButton(
                  ImageAssets.previous,
                  controller.isFetching.value
                      ? () {}
                      : controller.playPrevious)),
              _buildPlayButton(),
              Obx(() => _buildIconButton(ImageAssets.next,
                  controller.isFetching.value ? () {} : controller.playNext)),
            ],
          ),
          SizedBox(height: getVerticalSize(20)),
          _buildAutoNextButton(),
        ],
      ),
    );
  }

  Widget _buildPlayButton() => Obx(() => GestureDetector(
        onTap: controller.togglePlay,
        child: Container(
          height: getVerticalSize(120),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              controller.isPlaying.value
                  ? BoxShadow(
                      color: AppColors.blurPauseBtnColor,
                      blurRadius: 12,
                      spreadRadius: -6,
                    )
                  : BoxShadow(
                      color: AppColors.blurPlayBtnColor,
                      blurRadius: 12,
                      spreadRadius: -6,
                    ),
            ],
          ),
          child: Center(
            child: SvgPicture.asset(
              controller.isPlaying.value
                  ? ImageAssets.pauseAudio
                  : ImageAssets.playAudio,
              height: getSize(100),
            ),
          ),
        ),
      ));

  Widget _buildIconButton(String iconPath, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: getVerticalSize(120),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
          child: SvgPicture.asset(
            iconPath,
            width: getSize(30),
            height: getSize(30),
          ),
        ),
      ),
    );
  }

  Widget _buildAutoNextButton() => Obx(() {
        final isActive = controller.isAutoNext.value;
        return GestureDetector(
          onTap: controller.toggleAutoNext,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                isActive
                    ? ImageAssets.autoNextActive
                    : ImageAssets.autoNextDeActive,
                width: getSize(36),
                height: getSize(36),
              ),
              SizedBox(width: getVerticalSize(6)),
              Text(
                appLocalization.auto_next,
                style: TextStyle(
                    fontSize: getFontSize(18),
                    color: isActive
                        ? AppColors.greenAuthScreenColor
                        : AppColors.disabledColor,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        );
      });
}
