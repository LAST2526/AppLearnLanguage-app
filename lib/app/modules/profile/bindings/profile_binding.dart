import 'package:last02/app/modules/auth/controllers/login_controller.dart';
import 'package:last02/app/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
  }
}
