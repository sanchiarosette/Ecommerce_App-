import 'package:get/get.dart';

import '../controllers/clothing_controller.dart';

class ClothingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClothingController>(
      () => ClothingController(),
    );
  }
}
