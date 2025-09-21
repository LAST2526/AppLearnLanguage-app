import 'package:freezed_annotation/freezed_annotation.dart';

part 'lession_api_response.freezed.dart';
part 'lession_api_response.g.dart';

@freezed
class LessionApiResponse with _$LessionApiResponse {
  const factory LessionApiResponse({
    required bool isSuccess,
    required String message,
    required List<LessionData> data,
    required int statusCode,
  }) = _LessionApiResponse;

  factory LessionApiResponse.fromJson(Map<String, dynamic> json) =>
      _$LessionApiResponseFromJson(json);
}

@freezed
class LessionData with _$LessionData {
  const factory LessionData({
    required int id,
    required String audioCode,
    required int audioType,
    required String title,
    required String fileUrl,
    required int sortOrder,
    required bool isFree,
    required String script,
    String? scriptEn,
    String? scriptVi,
    int? courseId,
  }) = _LessionData;

  factory LessionData.fromJson(Map<String, dynamic> json) =>
      _$LessionDataFromJson(json);
}
