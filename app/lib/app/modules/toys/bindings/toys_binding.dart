import 'package:get/get.dart';

import '../controllers/toys_controller.dart';

class ToysBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ToysController>(
      () => ToysController(),
    );
  }
}
