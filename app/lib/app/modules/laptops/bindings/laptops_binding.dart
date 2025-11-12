import 'package:get/get.dart';

import '../controllers/laptops_controller.dart';

class LaptopsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaptopsController>(
      () => LaptopsController(),
      tag: 'LaptopsController',
    );
  }
}
