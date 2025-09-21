import 'package:last02/app/core/base/base_remote_source.dart';
import 'package:last02/app/data/models/flash_card/flash_card_api_response.dart';
import 'package:last02/app/data/models/flash_card/update_status_flash_card_request.dart';
import 'package:last02/app/data/models/flash_card/update_status_flash_card_response.dart';
import 'package:last02/app/data/remotes/flash_card_remote_data_source.dart';
import 'package:last02/app/network/dio_provider.dart';

class FlashCardRemoteDataSourceImpl extends BaseRemoteSource
    implements FlashCardRemoteDataSource {
  @override
  Future<FlashCardApiResponse> getFlashCardsByTopicIdAndStatus(int topicId,
      {int? status}) {
    String endpoint =
        "${DioProvider.baseUrl}/api/Flashcard/by-topic-id/$topicId";
    if (status != null) {
      endpoint += "?Status=$status";
    }
    final dioCall = dioClient.get(endpoint);

    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => FlashCardApiResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<UpdateStatusFlashCardResponse> updateStatusFlashCard(
      UpdateStatusFlashCardRequest request) {
    final endpoint = "${DioProvider.baseUrl}/api/Flashcard/update-status";
    final dioCall = dioClient.post(
      endpoint,
      data: request.toJson(),
    );

    try {
      return callApiWithErrorParser(dioCall).then(
          (response) => UpdateStatusFlashCardResponse.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
