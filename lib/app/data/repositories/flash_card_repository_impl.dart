import 'package:get/get.dart';
import 'package:last02/app/data/models/flash_card/flash_card_api_response.dart';
import 'package:last02/app/data/models/flash_card/update_status_flash_card_request.dart';
import 'package:last02/app/data/models/flash_card/update_status_flash_card_response.dart';
import 'package:last02/app/data/remotes/flash_card_remote_data_source.dart';
import 'package:last02/app/data/repositories/flash_card_repository.dart';

class FlashCardRepositoryImpl implements FlashCardRepository {
  final FlashCardRemoteDataSource _remoteDataSource =
      Get.find<FlashCardRemoteDataSource>(
          tag: (FlashCardRemoteDataSource).toString());

  @override
  Future<FlashCardApiResponse> getFlashCardsByTopicIdAndStatus(topicId,
      [status]) {
    return _remoteDataSource.getFlashCardsByTopicIdAndStatus(topicId,
        status: status);
  }

  @override
  Future<UpdateStatusFlashCardResponse> updateStatusFlashCard(
      UpdateStatusFlashCardRequest request) {
    return _remoteDataSource.updateStatusFlashCard(request);
  }
}
