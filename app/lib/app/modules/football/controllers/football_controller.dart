import 'package:get/get.dart';
import 'package:logging/logging.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';

class FootballController extends GetxController {
  final Logger _logger = Logger('FootballController');
  final RxList<ProductModel> footballProducts = <ProductModel>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadFootballProducts();
  }

  void loadFootballProducts() {
    try {
      isLoading.value = true;
      footballProducts.value = DummyHelper.getFootball();
    } catch (e) {
      _logger.severe('Error loading football products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }

  void toggleFavorite(int index) {
    final product = footballProducts[index];
    Get.find<FavoritesController>().toggleFavorite(product);
  }
}
