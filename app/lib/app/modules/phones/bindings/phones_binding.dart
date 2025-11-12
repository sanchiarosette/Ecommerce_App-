import 'package:get/get.dart';

import '../controllers/phones_controller.dart';

class PhonesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhonesController>(
      () => PhonesController(),
      tag: 'PhonesController',
    );
  }
}
