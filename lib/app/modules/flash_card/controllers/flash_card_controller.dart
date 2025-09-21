import 'package:get/get.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/core/values/enum_values.dart';
import 'package:last02/app/data/models/flash_card/flash_card_api_response.dart';
import 'package:last02/app/data/models/flash_card/update_status_flash_card_request.dart';
import 'package:last02/app/data/repositories/flash_card_repository.dart';
import 'package:last02/app/modules/flash_card/widgets/flash_card_item.dart';
import 'package:last02/app/modules/flash_card/widgets/swipe_result_badge.dart';
import 'package:last02/app/modules/text_to_speech/controllers/tts_controller.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class FlashCardController extends BaseController {
  late final FlashCardRepository flashCardRepository;
  FlashCardState? state;

  final flashCardDataList = <FlashCardData>[].obs;
  final hasFinishedAllCards = false.obs;
  final flashCardForgotList = <FlashCardData>[].obs;
  final flashCardMemoryList = <FlashCardData>[].obs;

  final selectedTabIndex = FlashCardStatus.newCard.indexValue.obs;
  final showGuideText = false.obs;
  final showGreenBadge = false.obs;
  final showRedBadge = false.obs;
  final showBadgeResult = false.obs;
  final isEnableSwipe = true.obs;
  final Rx<SwipeDirectionType?> swipeDirection = Rx<SwipeDirectionType?>(null);
  late final TTSController ttsController;

  final topicId = RxnInt();
  final RxString topicTitle = ''.obs;

  final currentlySpeaking = ''.obs;

  @override
  void onInit() {
    super.onInit();
    ttsController = Get.find<TTSController>();
    flashCardRepository = Get.find(tag: (FlashCardRepository).toString());
    final args = Get.arguments as Map<String, dynamic>?;
    if (args != null) {
      if (args['topicId'] != null) {
        topicId.value = args['topicId'] as int;
      }
      if (args['topicTitle'] != null) {
        topicTitle.value = args['topicTitle'] as String;
      }
    }
    getFlashCardListByTopicId(topicId.value);
    selectTab(FlashCardStatus.newCard);
  }

  bool isJapanese(String text) {
    final japaneseRegex = RegExp(r'[\u3040-\u309F\u30A0-\u30FF\u4E00-\u9FBF]');
    return japaneseRegex.hasMatch(text);
  }

  Future<void> getFlashCardListByTopicId(int? topicId) async {
    if (topicId == null) {
      return;
    }

    await callDataService(
      flashCardRepository.getFlashCardsByTopicIdAndStatus(topicId),
      onSuccess: (response) {
        final allCards = List<FlashCardData>.from(response.data);
        flashCardDataList.value = allCards
            .where((card) => card.status == FlashCardStatus.newCard.indexValue)
            .toList();
        flashCardMemoryList.value = allCards
            .where(
                (card) => card.status == FlashCardStatus.memorized.indexValue)
            .toList();
        flashCardForgotList.value = allCards
            .where(
                (card) => card.status == FlashCardStatus.forgotten.indexValue)
            .toList();
      },
    );
  }

  List<FlashCardData> get currentFlashCards {
    switch (FlashCardStatus.fromIndex(selectedTabIndex.value)) {
      case FlashCardStatus.newCard:
        return flashCardDataList;
      case FlashCardStatus.memorized:
        return flashCardMemoryList;
      case FlashCardStatus.forgotten:
        return flashCardForgotList;
    }
  }

  Future<void> updateFlashCardStatus({
    required int flashcardId,
    required FlashCardStatus action,
  }) async {
    final updateRequest = UpdateStatusFlashCardRequest(
      flashcardId: flashcardId,
      action: action.indexValue,
    );

    await callDataService(
      flashCardRepository.updateStatusFlashCard(updateRequest),
      onSuccess: (response) {},
      onStart: () {},
      onComplete: () {},
    );
  }

  void handleSwipeLeft(FlashCardData card) async {
    await updateFlashCardStatus(
      flashcardId: card.id,
      action: FlashCardStatus.newCard,
    );
    final updatedCard =
        card.copyWith(count: 0, status: FlashCardStatus.newCard.indexValue);

    if (selectedTabIndex.value == FlashCardStatus.forgotten.indexValue) {
      flashCardForgotList.removeWhere((e) => e.id == card.id);
      flashCardForgotList.refresh();
    }

    if (selectedTabIndex.value == FlashCardStatus.memorized.indexValue) {
      flashCardMemoryList.removeWhere((e) => e.id == card.id);
      flashCardMemoryList.refresh();
    }

    flashCardDataList.removeWhere((e) => e.id == card.id);
    flashCardDataList.add(updatedCard);
    flashCardDataList.refresh();
  }

  void handleSwipeRight(FlashCardData card) async {
    if (selectedTabIndex.value == FlashCardStatus.newCard.indexValue) {
      await updateFlashCardStatus(
        flashcardId: card.id,
        action: FlashCardStatus.forgotten,
      );
      flashCardDataList.removeWhere((e) => e.id == card.id);
      final updatedCard = card.copyWith(
          count: card.count + 1, status: FlashCardStatus.forgotten.indexValue);
      flashCardForgotList.add(updatedCard);
      flashCardForgotList.refresh();
      flashCardDataList.refresh();
    }

    if (selectedTabIndex.value == FlashCardStatus.forgotten.indexValue) {
      if (card.count >= 4) {
        final updatedCard = card.copyWith(
            count: card.count + 1,
            status: FlashCardStatus.memorized.indexValue);
        await updateFlashCardStatus(
          flashcardId: card.id,
          action: FlashCardStatus.forgotten,
        );
        flashCardForgotList.removeWhere((e) => e.id == card.id);
        flashCardMemoryList.add(updatedCard);
        flashCardForgotList.refresh();
        flashCardMemoryList.refresh();
      } else {
        final updatedCard = card.copyWith(
            count: card.count + 1,
            status: FlashCardStatus.forgotten.indexValue);
        await updateFlashCardStatus(
          flashcardId: card.id,
          action: FlashCardStatus.forgotten,
        );
        flashCardForgotList.removeWhere((e) => e.id == card.id);
        flashCardForgotList.add(updatedCard);
        flashCardForgotList.refresh();
      }
    }

    if (selectedTabIndex.value == FlashCardStatus.memorized.indexValue) {
      final updatedCard = card.copyWith(
          count: card.count + 1, status: FlashCardStatus.memorized.indexValue);
      await updateFlashCardStatus(
        flashcardId: card.id,
        action: FlashCardStatus.forgotten,
      );
      flashCardMemoryList.removeWhere((e) => e.id == card.id);
      flashCardMemoryList.add(updatedCard);
      flashCardMemoryList.refresh();
    }
  }

  void selectTab(FlashCardStatus status) {
    selectedTabIndex.value = status.indexValue;
  }

  Future<void> toggleCard() async {
    await state?.toggleCard();

    isEnableSwipe.value = !isEnableSwipe.value;
  }

  void showBadge(CardSwiperDirection directionType) {
    if (directionType == CardSwiperDirection.left) {
      showRedBadge.value = true;
      showBadgeResult.value = true;
    } else {
      showGreenBadge.value = true;
      showBadgeResult.value = true;
    }
  }

  void hideBadge() {
    showGreenBadge.value = false;
    showRedBadge.value = false;
    showBadgeResult.value = false;
  }

  void showGuide() {
    showGuideText.value = true;
  }

  void hideGuide() {
    showGuideText.value = false;
  }

  void speakAudio(String text) {
    currentlySpeaking.value = text;
    ttsController.speak(text);

    ttsController.setExternalCompletion(() {
      if (currentlySpeaking.value == text) {
        currentlySpeaking.value = '';
      }
    });
  }
}
