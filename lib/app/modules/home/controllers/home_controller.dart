import 'dart:async';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:last02/app/core/arguments/models/lession_arguments.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/data/models/topic/topic.dart';
import 'package:last02/app/data/repositories/user_repository.dart';
import 'package:last02/app/routes/app_pages.dart';
import '/app/core/base/base_controller.dart';

class HomeController extends BaseController {
  final UserRepository _userRepository =
      Get.find(tag: (UserRepository).toString());

  final PreferenceManager preferenceManager =
      Get.find<PreferenceManager>(tag: (PreferenceManager).toString());

  final hasRedeemedBook = false.obs;
  final userId = 0.obs;
  final notifyNotReadCount = 0.obs;
  final courseTitle = ''.obs;

  RxList<Topic> topics = <Topic>[].obs;
  final RxDouble courseProgress = 0.0.obs;
  final RxBool isLoadingTopics = true.obs;

  final RxInt _courseId = 0.obs;
  int get courseId => _courseId.value;

  final messageNoData = ''.obs;
  final Rx<Locale> currentLocale = Rx<Locale>(const Locale('en'));

  @override
  void onInit() {
    super.onInit();
    loadUserInfoAndTopics();
    getSavedLocale();
  }

  Future<Locale> getSavedLocale() async {
    final savedLocaleCode = await preferenceManager.getString('locale');

    if (savedLocaleCode.isNotEmpty) {
      currentLocale.value = Locale(savedLocaleCode);
      Get.updateLocale(currentLocale.value);
    }
    return const Locale('vi', '');
  }

  Future<void> loadUserInfoAndTopics() async {
    await callDataService(
      _userRepository.getMemberInfo(),
      onSuccess: (response) async {
        hasRedeemedBook.value = response.data.hasRedeemedBook ?? false;
        courseProgress.value = response.data.courseProgress ?? 0.0;
        userId.value = response.data.userId;
        courseTitle.value = response.data.courseTitle ?? '';

        if (response.data.courseId != null) {
          _courseId.value = response.data.courseId ?? 0;
          await getListTopicByCourseId(courseId);
        } else {
          messageNoData.value = appLocalization.no_data_value;
        }
      },
    );
    isLoadingTopics.value = false;
  }

  Future<void> updateCourseId() async {
    callDataService(
      _userRepository.getMemberInfo(),
      onSuccess: (response) async {
        if (response.data.courseId != null) {
          _courseId.value = response.data.courseId ?? 0;
          courseTitle.value = response.data.courseTitle ?? '';
          getListTopicByCourseId(_courseId.value);
        }
      },
    );
  }

  void goToGramma(int courseId) async {
    await Get.toNamed(Routes.LISTEN_PRACTICE,
        arguments: LessionArguments(
          courseId: courseId,
          isGramma: true,
        ));
  }

  void goToKawa(int courseId) {
    Get.toNamed(Routes.LISTEN_PRACTICE,
        arguments: LessionArguments(
          courseId: courseId,
          isGramma: false,
        ));
  }

  Future<void> getListTopicByCourseId(int courseId) async {
    // _checkUnlockTopic();
    isLoadingTopics.value = true;
    await callDataService(
      _userRepository.getTopicsByCourseId(courseId),
      onSuccess: (response) {
        topics.value = response.data;
        if (response.data.isEmpty) {
          messageNoData.value = appLocalization.no_data_value;
        } else {
          messageNoData.value = '';
        }
      },
      onComplete: () => isLoadingTopics.value = false,
    );
  }

  String getTopicTitle(Topic topic, String lang) {
    switch (lang) {
      case 'vi':
        return topic.titleVi;
      case 'en':
        return topic.titleEn;
      case 'ja':
      default:
        return topic.title;
    }
  }

  void goToProfile() {
    Get.toNamed(Routes.PROFILE);
  }

  void goToFlashCard(int topicId) async {
    final topic = topics.firstWhere((e) => e.id == topicId);
    final topicTitle = getTopicTitle(topic, currentLocale.value.languageCode);
    await Get.toNamed(Routes.FLASH_CARD, arguments: {
      'topicId': topicId,
      'topicTitle': topicTitle,
    });
    await loadUserInfoAndTopics();
  }
}
