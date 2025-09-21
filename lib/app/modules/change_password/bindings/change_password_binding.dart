import 'package:get/get.dart';
import 'package:last02/app/modules/change_password/controllers/change_password_controller.dart';

class ChangePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(() => ChangePasswordController(),
        fenix: true);
  }
}
