import 'package:last02/app/modules/sentence_player/controllers/sentence_player_controller.dart';
import 'package:get/get.dart';

class SentencePlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SentencePlayerController>(() => SentencePlayerController());
  }
}
