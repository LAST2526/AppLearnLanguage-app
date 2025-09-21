import 'package:freezed_annotation/freezed_annotation.dart';

part 'flash_card_api_response.freezed.dart';
part 'flash_card_api_response.g.dart';

@freezed
class FlashCardApiResponse with _$FlashCardApiResponse {
  const factory FlashCardApiResponse({
    required bool isSuccess,
    required String message,
    required List<FlashCardData> data,
    required int statusCode,
  }) = _FlashCardApiResponse;

  factory FlashCardApiResponse.fromJson(Map<String, dynamic> json) =>
      _$FlashCardApiResponseFromJson(json);
}

@freezed
class FlashCardData with _$FlashCardData {
  const factory FlashCardData({
    required int id,
    required String flashcardCode,
    required String front,
    required String furigana,
    required String imageUrl,
    required String meaningVi,
    required String meaningEn,
    required String example,
    required String exampleVi,
    required String exampleEn,
    @Default(0) int count,
    @Default(0) int status,
    required int topicId,
  }) = _FlashCardData;

  factory FlashCardData.fromJson(Map<String, dynamic> json) =>
      _$FlashCardDataFromJson(json);
}
