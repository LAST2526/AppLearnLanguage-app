import 'package:flutter/material.dart';
import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/modules/home/controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
    // return AppBar(
    //   elevation: 0,
    //   flexibleSpace: Container(
    //     decoration: const BoxDecoration(
    //       gradient: LinearGradient(
    //         begin: Alignment.topCenter,
    //         end: Alignment.bottomCenter,
    //         colors: [
    //           Color(0xFF00BF81),
    //           Color(0xFF00C7AF),
    //         ],
    //       ),
    //     ),
    //   ),
    //   title: Obx(() => Text(
    //         controller.courseTitle.value.isNotEmpty
    //             ? controller.courseTitle.value
    //             : '...',
    //         style: TextStyle(
    //             color: AppColors.textColorWhite,
    //             fontWeight: FontWeight.w700,
    //             fontSize: getFontSize(32),
    //             overflow: TextOverflow.visible),
    //       )),
    //   actions: [
    //     Stack(
    //       children: [
    //         IconButton(
    //             icon: Icon(
    //               Icons.notifications,
    //               color: AppColors.textColorWhite,
    //               size: getSize(36),
    //             ),
    //             onPressed: () {
    //               controller.goToListNotification();
    //             }),
    //         Positioned(
    //           top: 10,
    //           right: 10,
    //           child: Obx(() {
    //             if (controller.notifyNotReadCount.value > 0) {
    //               return Container(
    //                 padding: const EdgeInsets.all(3),
    //                 decoration: const BoxDecoration(
    //                   color: Colors.red,
    //                   shape: BoxShape.circle,
    //                 ),
    //                 child: Text(
    //                   '${controller.notifyNotReadCount.value}',
    //                   style: TextStyle(
    //                       fontSize: getFontSize(10), color: Colors.white),
    //                 ),
    //               );
    //             }
    //             return const Text('');
    //           }),
    //         ),
    //       ],
    //     ),
    //     IconButton(
    //       icon: SvgPicture.asset(
    //         ImageAssets.icUser,
    //         width: getSize(36),
    //       ),
    //       onPressed: () {
    //         if (DebounceTap.canTap('goToProfile')) {
    //           controller.goToProfile();
    //         }
    //       },
    //     ),
    //   ],
    // );
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold();
    //   return Stack(
    //     children: [
    //       // Gradient background
    //       Container(
    //         decoration: const BoxDecoration(
    //           gradient: LinearGradient(
    //             begin: Alignment.topCenter,
    //             end: Alignment.bottomCenter,
    //             colors: [
    //               Color(0xFF00C7AF),
    //               Color(0xFF00BF81),
    //             ],
    //           ),
    //         ),
    //       ),
    //       // Body content
    //       Container(
    //         margin: const EdgeInsets.only(top: 0),
    //         decoration: const BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.only(
    //             topLeft: Radius.circular(24),
    //             topRight: Radius.circular(24),
    //           ),
    //         ),
    //         child: ListView(
    //           padding: getPadding(top: 16, bottom: 24, left: 16, right: 16),
    //           children: [
    //             SectionTitle(
    //               svgAsset: 'images/ic_book_home.svg',
    //               title: appLocalization.flashcard,
    //               subContent: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Text(appLocalization.progress,
    //                           style: TextStyle(
    //                               fontSize: getFontSize(12),
    //                               color: AppColors.titleSubContentColor,
    //                               fontWeight: FontWeight.w700)),
    //                       SizedBox(width: getHorizontalSize(8)),
    //                       Expanded(
    //                         child: Obx(() => LinearProgressIndicator(
    //                               value: controller.courseProgress.value / 100,
    //                               backgroundColor:
    //                                   AppColors.progressBarBackground,
    //                               valueColor: const AlwaysStoppedAnimation<Color>(
    //                                   AppColors.greenAuthScreenColor),
    //                             )),
    //                       ),
    //                       const SizedBox(width: 8),
    //                       Obx(() => Text(
    //                             "${controller.courseProgress.value.toStringAsFixed(0)}%",
    //                             style: const TextStyle(fontSize: 12),
    //                           )),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             SizedBox(height: getVerticalSize(12)),
    //             Obx(() {
    //               if (controller.isLoadingTopics.value) {
    //                 return HorizontalGridCardSection(
    //                   cards: List.generate(4, (index) {
    //                     return Shimmer.fromColors(
    //                       baseColor: Colors.grey[300]!,
    //                       highlightColor: Colors.grey[100]!,
    //                       child: TopicItem(
    //                         title: '',
    //                         color: AppColors.colorWhite,
    //                         locked: true,
    //                         learned: 0,
    //                         total: 0,
    //                         onTap: () {},
    //                       ),
    //                     );
    //                   }),
    //                 );
    //               }
    //               if (controller.messageNoData.value.isNotEmpty) {
    //                 return Padding(
    //                   padding: const EdgeInsets.symmetric(vertical: 32),
    //                   child: Center(
    //                     child: Text(
    //                       appLocalization.no_data_value,
    //                       style: TextStyle(
    //                           fontSize: getFontSize(22),
    //                           color: AppColors.blackColor),
    //                     ),
    //                   ),
    //                 );
    //               }
    //               return HorizontalGridCardSection(
    //                 cards: controller.topics.map((topic) {
    //                   return TopicItem(
    //                     title: topic.title,
    //                     color: hexColor(topic.hexColorCode),
    //                     locked:
    //                         !(topic.isFree || controller.hasRedeemedBook.value),
    //                     learned: topic.completedFlashcardcnt,
    //                     total: topic.flashcardCnt,
    //                     onTap: () {
    //                       if (topic.isFree || controller.hasRedeemedBook.value) {
    //                         controller.goToFlashCard(topic.id);
    //                       } else {
    //                         controller.showTopicUnlock();
    //                       }
    //                     },
    //                   );
    //                 }).toList(),
    //               );
    //             }),
    //             SizedBox(height: getVerticalSize(32)),
    //             SectionTitle(
    //                 svgAsset: 'images/ic_audiobook.svg',
    //                 title: appLocalization.voice),
    //             SizedBox(height: getVerticalSize(12)),
    //             GridCardSection(
    //               cards: [
    //                 GrammaItem(
    //                   title: appLocalization.example,
    //                   color: AppColors.topicTeal,
    //                   imageAsset: 'images/ic_kanji.svg',
    //                   onTap: () => controller.goToGramma(controller.courseId),
    //                 ),
    //                 GrammaItem(
    //                   title: appLocalization.audio,
    //                   color: AppColors.topicBlue,
    //                   imageAsset: 'images/ic_audio.svg',
    //                   onTap: () => controller.goToKawa(controller.courseId),
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   );
    // }

    // Color hexColor(String hexCode) {
    //   final buffer = StringBuffer();
    //   if (hexCode.length == 6 || hexCode.length == 7) {
    //     buffer.write('ff');
    //     buffer.write(hexCode.replaceFirst('#', ''));
    //   }
    //   return Color(int.parse(buffer.toString(), radix: 16));
    // }
  }
}
