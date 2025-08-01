import 'package:get/get.dart';
import 'package:last02/app/data/repositories/auth_repository.dart';
import 'package:last02/app/data/repositories/auth_repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(),
        tag: (AuthRepository).toString(), fenix: true);
  }
}
