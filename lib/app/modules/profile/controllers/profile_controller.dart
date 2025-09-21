import 'package:get/get.dart';
import 'package:last02/app/core/arguments/models/update_profile_arguments.dart';
import 'package:last02/app/core/base/base_controller.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/data/models/member/member_info_response.dart';
import 'package:last02/app/data/repositories/user_repository.dart';
import 'package:last02/app/modules/auth/controllers/login_controller.dart';
import 'package:last02/app/routes/app_pages.dart';
import 'package:last02/app/routes/auth_service.dart';

class ProfileController extends BaseController {
  final UserRepository userRepository =
      Get.find(tag: (UserRepository).toString());
  final LoginController loginController = Get.find<LoginController>();
  final PreferenceManager preferenceManager =
      Get.find(tag: (PreferenceManager).toString());
  final Rxn<MemberModel> member = Rxn<MemberModel>();
  final RxString userName = ''.obs;
  final RxInt courseId = 0.obs;
  final RxInt userId = 0.obs;
  final RxString courseTitle = ''.obs;
  bool _isProcessing = true;

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchMemberInfo();
  }

  String getLanguageName(String languageCode) {
    final languages = {
      'vi': appLocalization.languageVi,
      'ja': appLocalization.languageJa,
      'en': appLocalization.languageEn,
    };
    return languages[languageCode] ?? '';
  }

  String getGender(int genderCode) {
    switch (genderCode) {
      case 0:
        return appLocalization.maleValue;
      case 1:
        return appLocalization.femaleValue;
      default:
        return '';
    }
  }

  Future<void> fetchMemberInfo() async {
    final future = userRepository.getMemberInfo();
    await callDataService(
      future,
      onSuccess: (response) {
        member.value = response.data.member;
        userName.value = response.data.userName;
        courseId.value = response.data.courseId ?? 0;
        userId.value = response.data.userId;
        courseTitle.value = response.data.courseTitle ?? '';
      },
      onComplete: () {
        hideLoading();
        _isProcessing = false;
      },
    );
  }

  void handleSignOut() async {
    final currentLocale = await preferenceManager.getString('locale');

    await preferenceManager.clear();

    if (currentLocale.isNotEmpty) {
      await preferenceManager.setString('locale', currentLocale);
    }
    Get.find<AuthService>().logout();
    Get.offAllNamed(Routes.LOGIN);
  }

  void goToChangePassword() {
    Get.toNamed(Routes.CHANGE_PASSWORD);
  }

  void goToUpdateProfile() async {
    if (_isProcessing) return;

    _isProcessing = false;
    final arguments = UpdateProfileInfoArguments(
      userId: userId.value,
      email: userName.value,
      fullName: member.value?.fullName,
      gender: member.value?.gender,
      avatarUrl: member.value?.avatarUrl,
      dob: member.value?.dob,
      nationality: member.value?.nationality,
      courseId: courseId.value,
    );
    Get.toNamed(Routes.UPDATE_PROFILE, arguments: arguments);
  }
}
