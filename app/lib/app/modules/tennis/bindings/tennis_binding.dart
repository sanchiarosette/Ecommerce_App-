import 'package:get/get.dart';

import '../controllers/tennis_controller.dart';

class TennisBinding extends Bindings {
  @override
  void dependencies() =>
      Get.lazyPut<TennisController>(() => TennisController());
}
