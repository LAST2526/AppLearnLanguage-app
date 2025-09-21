import 'package:last02/app/bindings/remote_source_bindings.dart';
import 'package:last02/app/bindings/repository_bindings.dart';
import 'package:get/get.dart';
import 'package:last02/app/modules/basic_info/controllers/basic_info_controller.dart';

class BasicInfoBinding extends Bindings {
  @override
  void dependencies() {
    RepositoryBindings().dependencies();
    RemoteSourceBindings().dependencies();
    Get.lazyPut<BasicInfoController>(() => BasicInfoController(), fenix: true);
  }
}
