import 'package:get/get.dart';

import '../controllers/basketball_controller.dart';

class BasketballBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasketballController>(
      () => BasketballController(),
    );
  }
}
