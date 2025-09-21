import 'package:get/get.dart';
import 'package:last02/app/modules/auth/controllers/register_controller.dart';
import 'package:last02/app/modules/update_profile/controllers/update_profile_controller.dart';

class UpdateProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdateProfileController>(
      () => UpdateProfileController(),
    );
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
  }
}
