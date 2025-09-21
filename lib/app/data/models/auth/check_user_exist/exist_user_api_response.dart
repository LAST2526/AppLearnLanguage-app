import 'package:freezed_annotation/freezed_annotation.dart';

part 'exist_user_api_response.freezed.dart';
part 'exist_user_api_response.g.dart';

@freezed
class ExistApiResponse with _$ExistApiResponse {
  const factory ExistApiResponse({
    required bool isSuccess,
    required String message,
    required ExistData data,
    required int statusCode,
  }) = _ExistApiResponse;

  factory ExistApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ExistApiResponseFromJson(json);
}

@freezed
class ExistData with _$ExistData {
  const factory ExistData({
    required bool isExist,
  }) = _ExistData;

  factory ExistData.fromJson(Map<String, dynamic> json) =>
      _$ExistDataFromJson(json);
}
