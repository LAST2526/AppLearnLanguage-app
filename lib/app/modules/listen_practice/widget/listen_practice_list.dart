import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/data/models/listen_practice/lession_api_response.dart';

class ListenPracticeList extends StatelessWidget {
  final Function(int index)? onItemTap;
  final Function(int index)? onItemLockedTap;
  final List<LessionData> dataList;
  final String playIconPath;
  final ScrollController? scrollController;
  final bool Function(LessionData item)? isItemUnlocked;
  final String Function(LessionData item)? getTitleByLanguageCode;

  const ListenPracticeList({
    super.key,
    this.onItemTap,
    this.onItemLockedTap,
    required this.dataList,
    required this.playIconPath,
    this.scrollController,
    this.isItemUnlocked,
    this.getTitleByLanguageCode,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: scrollController,
      padding: const EdgeInsets.all(16),
      itemCount: dataList.length,
      itemBuilder: (context, index) {
        final item = dataList[index];
        final locked = !(isItemUnlocked?.call(item) ?? item.isFree);
        final sentence = getTitleByLanguageCode?.call(item) ?? item.title;

        return InkWell(
          onTap: locked
              ? () => onItemLockedTap?.call(index)
              : () => onItemTap?.call(index),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Stack(
            children: [
              Container(
                margin: getMargin(bottom: 12),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  color: AppColors.grammaAudioBg,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.grammaAudioBorder),
                ),
                foregroundDecoration: locked
                    ? BoxDecoration(
                        color: AppColors.grammaListBg.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColors.grammaLockBorder),
                      )
                    : null,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      playIconPath,
                      width: getSize(32),
                      height: getSize(32),
                    ),
                    SizedBox(width: getHorizontalSize(12)),
                    Expanded(
                      child: Text(
                        sentence,
                        style: TextStyle(
                          fontSize: getFontSize(20),
                          fontWeight: FontWeight.bold,
                          color: AppColors.grammaPrimaryText,
                        ),
                      ),
                    ),
                    if (locked)
                      Icon(
                        Icons.lock,
                        color: AppColors.lockIconColor,
                        size: getSize(22),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
