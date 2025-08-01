import 'package:get/get.dart';
import 'package:last02/app/bindings/remote_source_bindings.dart';
import 'package:last02/app/bindings/repository_bindings.dart';
import 'package:last02/app/modules/auth/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    RepositoryBindings().dependencies();
    RemoteSourceBindings().dependencies();
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true);
  }
}
