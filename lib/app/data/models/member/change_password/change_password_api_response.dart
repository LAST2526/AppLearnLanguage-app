import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_api_response.freezed.dart';
part 'change_password_api_response.g.dart';

@freezed
class ChangePasswordApiResponse with _$ChangePasswordApiResponse {
  const factory ChangePasswordApiResponse({
    required bool isSuccess,
    required String message,
    required ChangePasswordData data,
    required int statusCode,
  }) = _ChangePasswordApiResponse;

  factory ChangePasswordApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordApiResponseFromJson(json);
}

@freezed
class ChangePasswordData with _$ChangePasswordData {
  const factory ChangePasswordData({
    required bool isChanged,
  }) = _ChangePasswordData;

  factory ChangePasswordData.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordDataFromJson(json);
}
