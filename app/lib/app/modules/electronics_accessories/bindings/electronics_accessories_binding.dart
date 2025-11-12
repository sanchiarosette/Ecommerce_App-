import 'package:get/get.dart';

import '../controllers/electronics_accessories_controller.dart';

class ElectronicsAccessoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ElectronicsAccessoriesController>(
      () => ElectronicsAccessoriesController(),
      tag: 'ElectronicsAccessoriesController',
    );
  }
}
