import 'package:last02/app/data/models/auth/login/login_email_request.dart';
import 'package:last02/app/data/models/auth/login/login_email_response.dart';

abstract class AuthRepository {
  Future<LoginEmailResponse> login(LoginEmailRequest request);
  // Future<ExistApiResponse> checkUserExist(String email);
  // Future<AuthResponse> socialOAuth(AuthQueryParam queryParam);
  // Future<RegisterResponse> register(RegisterRequest request);
  // Future<CourseResponse> getCoursesByLanguage(String languageCode);
  // Future<ForgotPasswordResponse> forgotPassword({
  //   required String email,
  //   required String dob,
  // });
  // Future<ProfileResponse> getCurrentUserInfo();

  // Future<FcmTokenApiResponse> uploadFcmToken(String token);
  // Future<DeleteFcmTokenApiResponse> deleteFcmToken();
}
