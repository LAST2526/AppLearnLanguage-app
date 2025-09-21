import 'package:last02/app/data/models/auth/check_user_exist/exist_user_api_response.dart';
import 'package:last02/app/data/models/auth/forgot_password/forgot_password_request.dart';
import 'package:last02/app/data/models/auth/forgot_password/forgot_password_response.dart';
import 'package:last02/app/data/models/auth/login/login_email_request.dart';
import 'package:last02/app/data/models/auth/login/login_email_response.dart';
import 'package:last02/app/data/models/auth/login/oauth_social_request.dart';
import 'package:last02/app/data/models/auth/register/register_request.dart';
import 'package:last02/app/data/models/auth/register/register_response.dart';
import 'package:last02/app/data/models/course/course_response.dart';

abstract class AuthRemoteDataSource {
  Future<LoginEmailResponse> login(LoginEmailRequest request);
  Future<ExistApiResponse> checkUserExist(String email);
  Future<LoginEmailResponse> socialOAuth(OAuthSocialRequest request);
  Future<RegisterResponse> register(RegisterRequest request);
  Future<CourseResponse> getCourses();
  Future<ForgotPasswordResponse> forgotPassword(ForgotPasswordRequest request);

  // Future<FcmTokenApiResponse> uploadFcmToken(String token);
  // Future<DeleteFcmTokenApiResponse> deleteFcmToken();
}
