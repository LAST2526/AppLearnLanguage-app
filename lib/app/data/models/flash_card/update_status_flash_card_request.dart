import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_status_flash_card_request.freezed.dart';
part 'update_status_flash_card_request.g.dart';

@freezed
class UpdateStatusFlashCardRequest with _$UpdateStatusFlashCardRequest {
  const factory UpdateStatusFlashCardRequest({
    required int flashcardId,
    required int action,
  }) = _UpdateStatusFlashCardRequest;

  factory UpdateStatusFlashCardRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateStatusFlashCardRequestFromJson(json);
}
