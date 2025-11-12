import 'package:get/get.dart';

import '../controllers/babies_controller.dart';
import '../controllers/babies_favorites_controller.dart';

class BabiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BabiesController>(
      () => BabiesController(),
    );
    Get.lazyPut<BabiesFavoritesController>(
      () => BabiesFavoritesController(),
    );
  }
}
