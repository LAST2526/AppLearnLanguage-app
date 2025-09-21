import 'package:dio/dio.dart';
import 'package:last02/app/core/base/base_remote_source.dart';
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
import 'package:last02/app/network/dio_provider.dart';

class AuthRemoteDataSourceImpl extends BaseRemoteSource
    implements AuthRemoteDataSource {
  @override
  Future<LoginEmailResponse> login(LoginEmailRequest request) {
    final endpoint = "${DioProvider.baseUrl}/api/Auth/email-login";
    final dioCall = dioClient.post(
      endpoint,
      data: {
        "email": request.email,
        "password": request.password,
      },
    );

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseLoginEmailResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  LoginEmailResponse _parseLoginEmailResponse(Response<dynamic> response) {
    return LoginEmailResponse.fromJson(response.data);
  }

  @override
  Future<ExistApiResponse> checkUserExist(String email) {
    final endpoint = "${DioProvider.baseUrl}/api/User/check-user-exist/$email";
    final dioCall = dioClient.get(
      endpoint,
    );

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => _parseApiResponse(response));
    } catch (e) {
      rethrow;
    }
  }

  ExistApiResponse _parseApiResponse(Response<dynamic> response) {
    return ExistApiResponse.fromJson(response.data);
  }

  @override
  Future<CourseResponse> getCourses() {
    final endpoint = "${DioProvider.baseUrl}/api/Course/get-all";
    final dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => CourseResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterResponse> register(RegisterRequest request) {
    final endpoint = "${DioProvider.baseUrl}/api/Auth/register-and-login";
    final dioCall = dioClient.post(
      endpoint,
      data: request.toJson(),
    );

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => RegisterResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<ForgotPasswordResponse> forgotPassword(ForgotPasswordRequest request) {
    final endpoint = "${DioProvider.baseUrl}/api/User/forgot-password";

    final dioCall = dioClient.post(
      endpoint,
      data: request.toJson(),
    );

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => ForgotPasswordResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LoginEmailResponse> socialOAuth(OAuthSocialRequest request) {
    final endpoint = "${DioProvider.baseUrl}/api/Auth/oauth-login";
    final dioCall = dioClient.post(endpoint, data: request.toJson());

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => LoginEmailResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
