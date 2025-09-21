import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_status_flash_card_response.freezed.dart';
part 'update_status_flash_card_response.g.dart';

@freezed
class UpdateStatusFlashCardResponse with _$UpdateStatusFlashCardResponse {
  const factory UpdateStatusFlashCardResponse({
    required bool isSuccess,
    required String message,
    required UpdatedData data,
    required int statusCode,
  }) = _UpdateStatusFlashCardResponse;

  factory UpdateStatusFlashCardResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateStatusFlashCardResponseFromJson(json);
}

@freezed
class UpdatedData with _$UpdatedData {
  const factory UpdatedData({
    required int id,
    required int memberId,
    required int flashcardId,
    required int status,
    required DateTime lastReviewedAt,
  }) = _UpdatedData;

  factory UpdatedData.fromJson(Map<String, dynamic> json) =>
      _$UpdatedDataFromJson(json);
}
