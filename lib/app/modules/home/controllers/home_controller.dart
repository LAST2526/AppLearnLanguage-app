import 'dart:async';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import '/app/core/base/base_controller.dart';

class HomeController extends BaseController {
  // late final TopicRepository _topicRepository;

  // late final UserRepository _userRepository;

  // late final AuthRepository _authRepository;
  // late final FirestoreDataService _firestoreDataService;

  final preferenceManager = Get.find<PreferenceManager>();

  final hasRedeemedBook = false.obs;
  final userId = 0.obs;
  final notifyNotReadCount = 0.obs;
  final courseTitle = ''.obs;
  late StreamSubscription<int> _unreadCountSub;

  // RxList<Topic> topics = <Topic>[].obs;
  // final RxDouble courseProgress = 0.0.obs;
  // final RxBool isLoadingTopics = true.obs;

  // final RxInt _courseId = 0.obs;
  // int get courseId => _courseId.value;

  // final messageNoData = ''.obs;
  // final Rx<Locale> currentLocale = Rx<Locale>(const Locale('ja'));

  // @override
  // void onInit() {
  //   super.onInit();
  //   _topicRepository = Get.find<TopicRepository>();
  //   _userRepository = Get.find<UserRepository>();
  //   _firestoreDataService = Get.find<FirestoreDataService>();
  //   _authRepository = Get.find(tag: (AuthRepository).toString());
  //   loadUserInfoAndTopics();
  //   getSavedLocale();
  //   loadNotifyNotReadCount();
  // }

  // Future<Locale> getSavedLocale() async {
  //   final savedLocaleCode = await preferenceManager.getString('locale');

  //   if (savedLocaleCode.isNotEmpty) {
  //     currentLocale.value = Locale(savedLocaleCode);
  //     Get.updateLocale(currentLocale.value);
  //   }
  //   return const Locale('ja', '');
  // }

  // Future<void> loadUserInfoAndTopics() async {
  //   await callDataService(
  //     _authRepository.getCurrentUserInfo(),
  //     onSuccess: (response) async {
  //       hasRedeemedBook.value = response.data.hasRedeemedBook ?? false;
  //       courseProgress.value = response.data.courseProgress ?? 0.0;
  //       userId.value = response.data.userId;
  //       courseTitle.value = response.data.courseTitle ?? '';

  //       if (response.data.courseId != null) {
  //         _courseId.value = response.data.courseId ?? 0;
  //         await getListTopicByCourseId(courseId);
  //       } else {
  //         messageNoData.value = appLocalization.no_data_value;
  //       }

  //       loadNotifyNotReadCount();
  //     },
  //   );
  //   isLoadingTopics.value = false;
  // }

  // void loadNotifyNotReadCount() async {
  //   _unreadCountSub = _firestoreDataService
  //       .getSubCollectionCountNotRead(
  //     parentCollection: 'users',
  //     parentId: userId.toString(),
  //     subCollection: 'notifications',
  //   )
  //       .listen((count) {
  //     notifyNotReadCount.value = count;
  //   });
  // }

  // Future<void> updateCourseId() async {
  //   callDataService(
  //     _authRepository.getCurrentUserInfo(),
  //     onSuccess: (response) async {
  //       if (response.data.courseId != null) {
  //         _courseId.value = response.data.courseId ?? 0;
  //         courseTitle.value = response.data.courseTitle ?? '';
  //         getListTopicByCourseId(_courseId.value);
  //       }
  //     },
  //   );
  // }

  // void _handleSubmitTopicCode(String bookInstanceCode) async {
  //   await callDataService(
  //     _userRepository.unlockTopic(bookInstanceCode),
  //     onSuccess: (response) async {
  //       hasRedeemedBook.value = response.data.hasRedeemedBook;
  //       await getListTopicByCourseId(courseId);
  //       Get.back();
  //     },
  //   );
  // }

  // void showTopicUnlock() {
  //   Get.dialog(
  //     DialogEnterTopicCode(
  //       onSubmit: (bookInstanceCode) async {
  //         _handleSubmitTopicCode(bookInstanceCode);
  //       },
  //       appLocalization: appLocalization,
  //     ),
  //     barrierDismissible: true,
  //   );
  // }

  // void _checkUnlockTopic() async {
  //   await callDataService(
  //     _userRepository.checkUnlockTopic(),
  //     onSuccess: (response) async {
  //       hasRedeemedBook.value = response.data.hasRedeemedBook;
  //     },
  //   );
  // }

  // void goToGramma(int courseId) async {
  //   await Get.toNamed(Routes.GRAMMA,
  //       arguments: LessionArguments(
  //         courseId: courseId,
  //         isGramma: true,
  //       ));
  // }

  // void goToKawa(int courseId) {
  //   Get.toNamed(Routes.GRAMMA,
  //       arguments: LessionArguments(
  //         courseId: courseId,
  //         isGramma: false,
  //       ));
  // }

  // Future<void> getListTopicByCourseId(int courseId) async {
  //   _checkUnlockTopic();
  //   isLoadingTopics.value = true;
  //   await callDataService(
  //     _topicRepository.getTopicsByCourseId(courseId),
  //     onSuccess: (response) {
  //       topics.value = response.data;
  //       if (response.data.isEmpty) {
  //         messageNoData.value = appLocalization.no_data_value;
  //       } else {
  //         messageNoData.value = '';
  //       }
  //     },
  //     onComplete: () => isLoadingTopics.value = false,
  //   );
  // }

  // void goToProfile() {
  //   Get.toNamed(Routes.PROFILE);
  // }

  // void goToFlashCard(int topicId) async {
  //   final topicTitle = topics.firstWhere((e) => e.id == topicId).title;
  //   await Get.toNamed(Routes.FLASH_CARD, arguments: {
  //     'topicId': topicId,
  //     'topicTitle': topicTitle,
  //   });
  //   callDataService(_topicRepository.getTopicsByCourseId(courseId),
  //       onSuccess: (response) {
  //         topics.value = response.data;
  //       },
  //       onStart: () => {});
  // }

  // void goToListNotification() async {
  //   final result = await Get.toNamed(Routes.LIST_NOTIFICATION, arguments: {
  //     'userId': userId.value,
  //     'notifyNotRead': notifyNotReadCount.value
  //   });
  //   if (result == true) {
  //     loadNotifyNotReadCount();
  //   }
  // }

  @override
  void onClose() {
    _unreadCountSub.cancel();
    super.onClose();
  }
}
