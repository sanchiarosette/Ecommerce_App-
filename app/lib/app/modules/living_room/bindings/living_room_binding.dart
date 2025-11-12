import 'package:get/get.dart';

import '../controllers/living_room_controller.dart';

class LivingRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LivingRoomController>(
      () => LivingRoomController(),
    );
  }
}