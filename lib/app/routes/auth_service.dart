import 'package:get/get.dart';

import '../data/local/preference/preference_manager.dart';

class AuthService extends GetxService {
  var isAuthenticated = false.obs;

  Future<AuthService> init() async {
    isAuthenticated.value = await loadAuthState();

    return this;
  }

  Future<bool> loadAuthState() async {
    final PreferenceManager _storage =
        Get.find(tag: (PreferenceManager).toString());
    String token = await _storage.getString(PreferenceManager.keyToken);

    return token.isNotEmpty;
  }

  void login() {
    isAuthenticated.value = true;
  }

  void logout() {
    isAuthenticated.value = false;
  }
}
