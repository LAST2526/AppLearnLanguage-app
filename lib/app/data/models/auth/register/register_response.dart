import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';
part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required bool isSuccess,
    required String message,
    RegisterData? data,
    required int statusCode,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData(
      {required int id,
      required String userName,
      required bool isExist,
      required bool isActive,
      required String accessToken,
      required String refreshToken}) = _RegisterData;

  factory RegisterData.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataFromJson(json);
}

@freezed
class MemberData with _$MemberData {
  const factory MemberData({
    required int id,
  }) = _MemberData;

  factory MemberData.fromJson(Map<String, dynamic> json) =>
      _$MemberDataFromJson(json);
}
