import 'package:get/get.dart';
import 'package:last02/app/data/repositories/auth_repository.dart';
import 'package:last02/app/data/repositories/auth_repository_impl.dart';
import 'package:last02/app/data/repositories/flash_card_repository.dart';
import 'package:last02/app/data/repositories/flash_card_repository_impl.dart';
import 'package:last02/app/data/repositories/user_repository.dart';
import 'package:last02/app/data/repositories/user_repository_impl.dart';

class RepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(),
        tag: (AuthRepository).toString(), fenix: true);
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl(),
        tag: (UserRepository).toString(), fenix: true);
    Get.lazyPut<FlashCardRepository>(() => FlashCardRepositoryImpl(),
        tag: (FlashCardRepository).toString(), fenix: true);
  }
}
