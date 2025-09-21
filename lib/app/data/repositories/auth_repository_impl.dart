import 'package:get/get.dart';
import 'package:last02/app/data/models/auth/check_user_exist/exist_user_api_response.dart';
import 'package:last02/app/data/models/auth/forgot_password/forgot_password_request.dart';
import 'package:last02/app/data/models/auth/forgot_password/forgot_password_response.dart';
import 'package:last02/app/data/models/auth/login/login_email_request.dart';
import 'package:last02/app/data/models/auth/login/login_email_response.dart';
import 'package:last02/app/data/models/auth/login/oauth_social_request.dart';
import 'package:last02/app/data/models/auth/register/register_request.dart';
import 'package:last02/app/data/models/auth/register/register_response.dart';
import 'package:last02/app/data/models/course/course_response.dart';
import 'package:last02/app/data/remotes/auth_remote_data_source.dart';
import 'package:last02/app/data/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource =
      Get.find<AuthRemoteDataSource>(tag: (AuthRemoteDataSource).toString());

  @override
  Future<LoginEmailResponse> login(LoginEmailRequest request) {
    return _remoteDataSource.login(request);
  }

  @override
  Future<ExistApiResponse> checkUserExist(String email) {
    return _remoteDataSource.checkUserExist(email);
  }

  @override
  Future<CourseResponse> getCourses() {
    return _remoteDataSource.getCourses();
  }

  @override
  Future<RegisterResponse> register(RegisterRequest request) {
    return _remoteDataSource.register(request);
  }

  @override
  Future<ForgotPasswordResponse> forgotPassword(ForgotPasswordRequest request) {
    return _remoteDataSource.forgotPassword(request);
  }

  @override
  Future<LoginEmailResponse> socialOAuth(OAuthSocialRequest request) {
    return _remoteDataSource.socialOAuth(request);
  }
}
