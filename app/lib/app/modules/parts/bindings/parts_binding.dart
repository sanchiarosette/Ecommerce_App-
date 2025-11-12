import 'package:get/get.dart';

import '../controllers/parts_controller.dart';

class PartsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PartsController>(
      () => PartsController(),
    );
  }
}
