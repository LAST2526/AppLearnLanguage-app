import 'package:get/get.dart';
import 'package:last02/app/modules/listen_practice/controllers/listen_practice_controller.dart';

class ListenPracticeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListenPracticeController>(() => ListenPracticeController());
  }
}
