import 'package:get/get.dart';
import 'package:last02/app/data/models/auth/login/login_email_request.dart';
import 'package:last02/app/data/models/auth/login/login_email_response.dart';
import 'package:last02/app/data/remotes/auth_remote_data_source.dart';
import 'package:last02/app/data/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource =
      Get.find<AuthRemoteDataSource>(tag: (AuthRemoteDataSource).toString());

  @override
  Future<LoginEmailResponse> login(LoginEmailRequest request) {
    return _remoteDataSource.login(request);
  }
}
