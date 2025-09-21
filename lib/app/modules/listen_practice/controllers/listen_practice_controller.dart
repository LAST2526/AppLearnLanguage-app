import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last02/app/core/arguments/models/lession_arguments.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/data/models/listen_practice/lession_api_response.dart';
import 'package:last02/app/data/repositories/user_repository.dart';
import 'package:last02/app/modules/sentence_player/controllers/sentence_player_controller.dart';
import 'package:last02/app/modules/sentence_player/views/sentence_player_view.dart';
import 'package:last02/l10n/app_localizations.dart';

class ListenPracticeController extends BaseController {
  late final RxBool isGramma = true.obs;
  late final RxInt courseId = 0.obs;

  final RxList<LessionData> lessionList = <LessionData>[].obs;
  final RxList<LessionData> originalPlaylist = <LessionData>[].obs;
  late final UserRepository _userRepository;
  late ScrollController scrollController;
  int page = 1;
  bool isLoadingMore = false;
  bool hasMoreData = true;
  int pageGramma = 1;
  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
    _userRepository =
        Get.find<UserRepository>(tag: (UserRepository).toString());

    final args = Get.arguments;
    if (args is LessionArguments) {
      isGramma.value = args.isGramma;
      courseId.value = args.courseId ?? 0;
    } else {
      isGramma.value = false;
      courseId.value = 0;
    }
    getLessionListByCourseId(courseId.value);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 500), () {
        if (!scrollController.hasClients) return;
        if (scrollController.position.maxScrollExtent <= 0 && hasMoreData) {
          print("load them...");
          loadMore();
        }
      });
    });
  }

  void _scrollListener() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 100) {
      loadMore();
    }
  }

  Future<void> getLessionListByCourseId(int? courseId,
      {bool isLoadMore = false}) async {
    if (courseId == null || isLoadingMore || !hasMoreData) return;
    if (isLoadMore) {
      isLoadingMore = true;
      pageGramma++;
    } else {
      pageGramma = 1;
      hasMoreData = true;
      originalPlaylist.clear();
    }
    await callDataService(
      isGramma.value
          ? _userRepository.getListGrammaByCourseId(courseId, pageGramma)
          : _userRepository.getListKaiwaByCourseId(courseId, pageGramma),
      onSuccess: (response) {
        if (response.data.isEmpty) {
          hasMoreData = false;
        } else {
          originalPlaylist.addAll(response.data);
        }
      },
    );
    isLoadingMore = false;
  }

  void showSentencePlayer(
    BuildContext context,
    AppLocalizations appLocalization,
    LessionData item,
    bool audioScaner,
  ) {
    if (!Get.isRegistered<SentencePlayerController>()) {
      Get.lazyPut(() => SentencePlayerController(), fenix: true);
    }

    final sentencePlayerController = Get.find<SentencePlayerController>();
    sentencePlayerController.initialize(
      data: audioScaner ? lessionList.toList() : originalPlaylist.toList(),
      selectedItem: item,
      page: page,
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => SentencePlayerView(
        controller: sentencePlayerController,
        appLocalization: appLocalization,
      ),
    ).whenComplete(() {
      if (Get.isRegistered<SentencePlayerController>()) {
        page = 1;
        Get.delete<SentencePlayerController>();
      }
    });
  }

  void loadMore() {
    getLessionListByCourseId(courseId.value, isLoadMore: true);
  }
}
