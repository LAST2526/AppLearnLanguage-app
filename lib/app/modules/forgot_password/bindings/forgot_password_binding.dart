import 'package:get/get.dart';
import 'package:last02/app/modules/forgot_password/controllers/forgot_password_controller.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(() => ForgotPasswordController(),
        fenix: true);
  }
}
