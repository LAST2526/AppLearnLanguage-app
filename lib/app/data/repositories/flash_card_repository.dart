import 'package:last02/app/data/models/flash_card/flash_card_api_response.dart'
    show FlashCardApiResponse;
import 'package:last02/app/data/models/flash_card/update_status_flash_card_request.dart';
import 'package:last02/app/data/models/flash_card/update_status_flash_card_response.dart';

abstract class FlashCardRepository {
  Future<FlashCardApiResponse> getFlashCardsByTopicIdAndStatus(int topicId,
      [int? status]);
  Future<UpdateStatusFlashCardResponse> updateStatusFlashCard(
      UpdateStatusFlashCardRequest request);
}
