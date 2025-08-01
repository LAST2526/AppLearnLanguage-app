import 'package:get/get.dart';
import 'package:last02/app/controllers/auth_controller.dart';
import 'package:last02/app/data/local/preference/preference_manager.dart';
import 'package:last02/app/data/local/preference/preference_manager_impl.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PreferenceManager>(
      () => PreferenceManagerImpl(),
      tag: (PreferenceManager).toString(),
      fenix: true,
    );
    Get.lazyPut<AuthController>(
      () => AuthController(),
      tag: (AuthController).toString(),
      fenix: true,
    );
  }
}
