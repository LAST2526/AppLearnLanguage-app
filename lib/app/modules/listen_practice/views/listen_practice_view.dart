import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/modules/listen_practice/controllers/listen_practice_controller.dart';
import 'package:last02/app/modules/listen_practice/widget/listen_practice_list.dart';

class ListenPracticeView extends BaseView<ListenPracticeController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Obx(() => AppBar(
            title: Text(
              controller.isGramma.value
                  ? appLocalization.example
                  : appLocalization.audio,
              style: TextStyle(
                fontSize: getFontSize(22),
                fontWeight: FontWeight.w700,
                color: AppColors.textColorWhite,
              ),
            ),
            centerTitle: true,
            backgroundColor: controller.isGramma.value
                ? AppColors.topicTeal
                : AppColors.kawaAppBarColor,
            iconTheme: const IconThemeData(
              color: AppColors.textColorWhite,
            ),
          )),
    );
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Obx(() {
              if (controller.originalPlaylist.isNotEmpty) {
                return ListenPracticeList(
                  dataList: controller.originalPlaylist,
                  playIconPath: controller.isGramma.value
                      ? ImageAssets.grammarPlayIcon
                      : ImageAssets.kaiwaPlayIcon,
                  scrollController: controller.scrollController,
                  // isItemUnlocked: controller.isItemUnlocked,
                  onItemTap: (index) {
                    final item = controller.originalPlaylist[index];
                    controller.showSentencePlayer(
                      context,
                      appLocalization,
                      item,
                      false,
                    );
                  },
                );
              } else {
                return Center(
                  child: Text(
                    appLocalization.no_data_value,
                    style: TextStyle(
                      fontSize: getFontSize(20),
                      color: AppColors.blackColor,
                    ),
                  ),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
