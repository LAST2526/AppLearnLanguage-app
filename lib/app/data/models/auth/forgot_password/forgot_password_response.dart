import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_response.freezed.dart';
part 'forgot_password_response.g.dart';

@freezed
class ForgotPasswordResponse with _$ForgotPasswordResponse {
  const factory ForgotPasswordResponse({
    required bool isSuccess,
    required String message,
    required SentData data,
    required int statusCode,
  }) = _ForgotPasswordResponse;

  factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResponseFromJson(json);
}

@freezed
class SentData with _$SentData {
  const factory SentData({
    required bool isSent,
  }) = _SentData;

  factory SentData.fromJson(Map<String, dynamic> json) =>
      _$SentDataFromJson(json);
}
