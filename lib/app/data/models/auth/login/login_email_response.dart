import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_email_response.freezed.dart';
part 'login_email_response.g.dart';

@freezed
class LoginEmailResponse with _$LoginEmailResponse {
  const factory LoginEmailResponse({
    required bool isSuccess,
    required String message,
    required LoginEmailData data,
    required int statusCode,
  }) = _LoginEmailResponse;

  factory LoginEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginEmailResponseFromJson(json);
}

@freezed
class LoginEmailData with _$LoginEmailData {
  const factory LoginEmailData({
    required String accessToken,
    required String refreshToken,
    required String userName,
    required String mail,
    required bool isExist,
  }) = _LoginEmailData;

  factory LoginEmailData.fromJson(Map<String, dynamic> json) =>
      _$LoginEmailDataFromJson(json);
}
