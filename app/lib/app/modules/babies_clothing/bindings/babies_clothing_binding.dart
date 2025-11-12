import 'package:get/get.dart';

import '../controllers/babies_clothing_controller.dart';

class BabiesClothingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BabiesClothingController>(
      () => BabiesClothingController(),
    );
  }
}
