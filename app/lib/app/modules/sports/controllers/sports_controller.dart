import 'package:get/get.dart';
import 'package:logging/logging.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';

class SportsController extends GetxController {
  final Logger _logger = Logger('SportsController');
  final RxList<ProductModel> sportsProducts = <ProductModel>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadSportsProducts();
  }

  void loadSportsProducts() {
    try {
      isLoading.value = true;
      // Combine all sports subcategories into one list
      final allSportsProducts = [
        ...DummyHelper.getFootball(),
        ...DummyHelper.getTennis(),
        ...DummyHelper.getCricket(),
      ];
      sportsProducts.value = allSportsProducts;
    } catch (e) {
      _logger.severe('Error loading sports products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }

  void toggleFavorite(int index) {
    final product = sportsProducts[index];
    Get.find<FavoritesController>().toggleFavorite(product);
  }
}
