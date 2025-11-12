import 'package:get/get.dart';

import '../controllers/shoes_controller.dart';

class ShoesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoesController>(
      () => ShoesController(),
    );
  }
}
