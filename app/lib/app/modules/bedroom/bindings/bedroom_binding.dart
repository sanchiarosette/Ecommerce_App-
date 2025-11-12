import 'package:get/get.dart';

import '../controllers/bedroom_controller.dart';

class BedroomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BedroomController>(
      () => BedroomController(),
      tag: 'BedroomController',
    );
  }
}
