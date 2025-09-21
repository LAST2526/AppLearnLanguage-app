import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:last02/app/core/base/base_view.dart';
import 'package:last02/app/core/utils/image_assets.dart';
import 'package:last02/app/core/utils/math_utils.dart';
import 'package:last02/app/core/values/app_colors.dart';
import 'package:last02/app/modules/flash_card/controllers/flash_card_controller.dart';
import 'package:last02/app/modules/flash_card/widgets/back_card_container.dart';
import 'package:last02/app/modules/flash_card/widgets/flash_card_header.dart';
import 'package:last02/app/modules/flash_card/widgets/flash_card_item.dart';
import 'package:last02/app/modules/flash_card/widgets/front_cart_container.dart';
import 'package:last02/app/modules/flash_card/widgets/swipe_result_badge.dart';

class FlashCardView extends BaseView<FlashCardController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgHeaderRegister,
      centerTitle: true,
      iconTheme: const IconThemeData(color: Colors.white),
      title: Text(
        controller.topicTitle.value,
        style: TextStyle(
          color: Colors.white,
          fontSize: getFontSize(22),
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  Widget body(BuildContext context) {
    final widthMedia = size.width;
    final heightMedia = size.height;

    return Column(
      children: [
        const SizedBox(height: 12),
        FlashCardHeader(
          controller: controller,
          appLocalization: appLocalization,
        ),
        Flexible(
          child: Obx(() {
            if (controller.currentFlashCards.isEmpty) {
              return _buildEmptyState();
            }
            return _buildFlashCardSwiper(widthMedia, heightMedia);
          }),
        ),
      ],
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ImageAssets.flashcardEnd,
            width: size.width * 0.3,
            height: size.width * 0.3,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 12),
          Text(
            appLocalization.done_flash_card,
            style: TextStyle(
              fontSize: getFontSize(22),
              color: AppColors.flashcardTextBackground,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFlashCardSwiper(double widthMedia, double heightMedia) {
    final data = controller.currentFlashCards;

    return CardSwiper(
      key: ValueKey(data.map((e) => '${e.id}_${e.count}').join(',')),
      threshold: 80,
      maxAngle: 50,
      cardsCount: data.length,
      numberOfCardsDisplayed: data.length < 3 ? data.length : 3,
      isDisabled: controller.isEnableSwipe.value,
      allowedSwipeDirection:
          const AllowedSwipeDirection.only(left: true, right: true),
      isLoop: false,
      onSwipeDirectionChange: _handleSwipeDirectionChange,
      onSwipe: _handleSwipe,
      cardBuilder: (context, index, percentX, percentY) {
        final card = data[index];
        final locale = Localizations.localeOf(context);
        final isVietnamese = locale.languageCode == 'vi';
        return FlashCard(
          key: Key(card.id.toString()),
          fill: Fill.fillFront,
          controller: controller,
          direction: FlipDirection.HORIZONTAL,
          front: FrontCardContainer(
            controller: controller,
            mainText: card.front,
            imageUrl: card.imageUrl,
            widthMedia: widthMedia,
            heightMedia: heightMedia,
          ),
          back: BackCardContainer(
            controller: controller,
            widthMedia: widthMedia,
            heightMedia: heightMedia,
            mainText: card.front,
            imageUrl: card.imageUrl,
            subText: card.furigana,
            translateText: isVietnamese ? card.meaningVi : card.meaningEn,
            example: [
              card.example,
              isVietnamese ? card.exampleVi : card.exampleEn
            ],
            appLocalization: appLocalization,
          ),
        );
      },
    );
  }

  void _handleSwipeDirectionChange(
    CardSwiperDirection horizontalDirection,
    CardSwiperDirection verticalDirection,
  ) {
    controller.hideGuide();

    if (horizontalDirection == CardSwiperDirection.left) {
      controller.swipeDirection.value = SwipeDirectionType.left;
      controller.showBadge(horizontalDirection);
    } else if (horizontalDirection == CardSwiperDirection.right) {
      controller.swipeDirection.value = SwipeDirectionType.right;
      controller.showBadge(horizontalDirection);
    } else {
      controller.hideBadge();
    }
  }

  bool _handleSwipe(
      int oldIndex, int? newIndex, CardSwiperDirection direction) {
    controller.hideBadge();
    controller.hideGuide();
    controller.isEnableSwipe.value = true;

    final card = controller.currentFlashCards[oldIndex];
    if (direction == CardSwiperDirection.left) {
      controller.handleSwipeLeft(card);
    }

    if (direction == CardSwiperDirection.right) {
      controller.handleSwipeRight(card);
    }

    if (newIndex == null || newIndex >= controller.currentFlashCards.length) {
      controller.hasFinishedAllCards.value = true;
    }

    return true;
  }
}
