import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/modules/sentence_player/widgets/sentence_control.dart';
import 'package:last02/app/modules/sentence_player/widgets/sentence_script_card.dart';
import 'package:last02/app/modules/sentence_player/widgets/sentence_slider.dart';
import 'package:flutter/material.dart';
import 'package:last02/l10n/app_localizations.dart';
import 'package:last02/app/modules/sentence_player/controllers/sentence_player_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:last02/app/core/values/app_values.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SentencePlayerView extends StatelessWidget {
  final SentencePlayerController controller;
  final AppLocalizations appLocalization;

  const SentencePlayerView({
    super.key,
    required this.controller,
    required this.appLocalization,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.9,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      padding: getPadding(all: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: AppValues.extraLargePadding),
            child: SvgPicture.asset(ImageAssets.rectangle),
          ),
          Obx(() => SentenceScriptCard(
              controller: controller,
              appLocalization: appLocalization,
              text: controller.text.value)),
          SizedBox(height: getVerticalSize(30)),
          SentenceSlider(controller: controller),
          SentenceControls(
              controller: controller, appLocalization: appLocalization),
        ],
      ),
    );
  }
}
