import 'package:flutter/material.dart';
import 'package:last02/app/modules/sentence_player/controllers/sentence_player_controller.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:get/get.dart';

class SentenceSlider extends StatelessWidget {
  final SentencePlayerController controller;

  const SentenceSlider({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final pos = controller.position.value;
      final dur = controller.duration.value;
      final clamped =
          pos.inMilliseconds.clamp(0, dur.inMilliseconds).toDouble();

      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 4,
              trackShape: const RoundedRectSliderTrackShape(),
              activeTrackColor: AppColors.playSliderColor,
              inactiveTrackColor: AppColors.playTimeColor,
              thumbColor: AppColors.playSliderColor,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 12),
            ),
            child: Slider(
              value: clamped,
              max: dur.inMilliseconds.toDouble(),
              onChanged: (value) =>
                  controller.seekTo(Duration(milliseconds: value.toInt())),
            ),
          ),
          const SizedBox(height: 6),
          Padding(
            padding: getPaddingSymmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTimeText(_formatTime(pos)),
                _buildTimeText(_formatTime(dur)),
              ],
            ),
          ),
        ],
      );
    });
  }

  String _formatTime(Duration d) {
    final minutes = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  Widget _buildTimeText(String time) => Text(
        time,
        style: TextStyle(
          fontSize: getFontSize(14),
          color: AppColors.playTimeColor,
          fontWeight: FontWeight.w500,
        ),
      );
}
