import 'package:get/get.dart';

import '../controllers/cricket_controller.dart';
import '../controllers/cricket_favorites_controller.dart';

class CricketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CricketFavoritesController>(
      () => CricketFavoritesController(),
    );
    Get.lazyPut<CricketController>(
      () => CricketController(),
    );
  }
}
