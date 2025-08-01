import 'package:get/get.dart';
import '/app/data/local/preference/preference_manager.dart';
import '/app/routes/app_pages.dart';

class AuthController extends GetxController {
  final RxBool isLoggedIn = false.obs;
  final Rx<String> token = ''.obs;
  final PreferenceManager _preferenceManager =
      Get.find<PreferenceManager>(tag: (PreferenceManager).toString());

  @override
  void onInit() {
    super.onInit();
    checkLoginStatus();
  }

  Future<void> checkLoginStatus() async {
    final String savedToken =
        await _preferenceManager.getString(PreferenceManager.keyToken);
    if (savedToken.isNotEmpty) {
      token.value = savedToken;
      isLoggedIn.value = true;
    } else {
      isLoggedIn.value = false;
    }
  }

  Future<void> login(String newToken, String userName) async {
    await _preferenceManager.setString(PreferenceManager.keyToken, newToken);
    token.value = newToken;
    isLoggedIn.value = true;

    Get.offAllNamed(Routes.MAIN);
  }

  Future<void> logout() async {
    await _preferenceManager.remove(PreferenceManager.keyToken);
    token.value = '';
    isLoggedIn.value = false;
    Get.offAllNamed(Routes.LOGIN);
  }
}
