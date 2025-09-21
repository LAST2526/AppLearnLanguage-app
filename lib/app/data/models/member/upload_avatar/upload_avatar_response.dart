import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_avatar_response.freezed.dart';
part 'upload_avatar_response.g.dart';

@freezed
class UploadAvatarResponse with _$UploadAvatarResponse {
  const factory UploadAvatarResponse({
    required bool isSuccess,
    required String message,
    required UrlData data,
    required int statusCode,
  }) = _UploadAvatarResponse;

  factory UploadAvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadAvatarResponseFromJson(json);
}

@freezed
class UrlData with _$UrlData {
  const factory UrlData({
    required String avatarUrl,
  }) = _UrlData;

  factory UrlData.fromJson(Map<String, dynamic> json) =>
      _$UrlDataFromJson(json);
}
