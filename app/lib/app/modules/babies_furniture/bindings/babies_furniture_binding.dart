import 'package:get/get.dart';

import '../controllers/babies_furniture_controller.dart';

class BabiesFurnitureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BabiesFurnitureController>(
      () => BabiesFurnitureController(),
    );
  }
}
