import 'package:get/get.dart';

import '../controllers/accessories_controller.dart';

class AccessoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccessoriesController>(
      () => AccessoriesController(),
    );
  }
}
