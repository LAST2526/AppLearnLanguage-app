import 'package:get/get.dart';
import 'package:last02/app/data/remotes/auth_remote_data_source.dart';
import 'package:last02/app/data/remotes/auth_remote_data_source_impl.dart';
import 'package:last02/app/data/remotes/flash_card_remote_data_source.dart';
import 'package:last02/app/data/remotes/flash_card_remote_data_source_impl.dart';
import 'package:last02/app/data/remotes/user_remote_data_source.dart';
import 'package:last02/app/data/remotes/user_remote_data_source_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(),
        tag: (AuthRemoteDataSource).toString(), fenix: true);
    Get.lazyPut<UserRemoteDataSource>(() => UserRemoteDataSourceImpl(),
        tag: (UserRemoteDataSource).toString(), fenix: true);
    Get.lazyPut<FlashCardRemoteDataSource>(
        () => FlashCardRemoteDataSourceImpl(),
        tag: (FlashCardRemoteDataSource).toString(),
        fenix: true);
  }
}
