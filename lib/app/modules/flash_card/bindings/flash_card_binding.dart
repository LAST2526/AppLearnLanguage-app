import 'package:get/get.dart';
import 'package:last02/app/modules/flash_card/controllers/flash_card_controller.dart';
import 'package:last02/app/modules/text_to_speech/controllers/tts_controller.dart';

class FlashCardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FlashCardController>(() => FlashCardController(), fenix: true);
    Get.lazyPut<TTSController>(() => TTSController());
  }
}
