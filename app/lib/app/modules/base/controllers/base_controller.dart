import 'package:get/get.dart';

import '../../../../utils/dummy_helper.dart';
import '../../favorites/controllers/favorites_controller.dart';

class BaseController extends GetxController {
  // current screen index
  int currentIndex = 0;

  /// change the selected screen index
  changeScreen(int selectedIndex) {
    currentIndex = selectedIndex;
    update();
  }

  /// when the user press on the favorite button in the product
  onFavoriteButtonPressed({required int productId}) {
    var product =
        DummyHelper.products.firstWhere((product) => product.id == productId);
    // Use the global favorites controller directly
    Get.find<FavoritesController>().toggleFavorite(product);
    update(['FavoriteButton']);
  }
}
