import 'package:get/get.dart';

import '../controllers/diapers_controller.dart';

class DiapersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiapersController>(
      () => DiapersController(),
    );
  }
}
