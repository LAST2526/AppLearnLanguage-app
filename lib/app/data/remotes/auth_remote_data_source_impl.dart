import 'package:dio/dio.dart';
import 'package:last02/app/core/base/base_remote_source.dart';
import 'package:last02/app/data/models/auth/login/login_email_request.dart';
import 'package:last02/app/data/models/auth/login/login_email_response.dart';
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
}
