import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_api_response.freezed.dart';
part 'update_profile_api_response.g.dart';

@freezed
class UpdateProfileApiResponse with _$UpdateProfileApiResponse {
  const factory UpdateProfileApiResponse({
    required bool isSuccess,
    required String message,
    required int statusCode,
  }) = _UpdateProfileApiResponse;

  factory UpdateProfileApiResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileApiResponseFromJson(json);
}
