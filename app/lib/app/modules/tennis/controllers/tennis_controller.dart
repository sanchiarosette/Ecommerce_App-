import 'package:get/get.dart';
import 'package:logging/logging.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';

class TennisController extends GetxController {
  final Logger _logger = Logger('TennisController');
  final RxList<ProductModel> tennisProducts = <ProductModel>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadTennisProducts();
  }

  void loadTennisProducts() {
    try {
      isLoading.value = true;
      tennisProducts.value = DummyHelper.getTennis();
    } catch (e) {
      _logger.severe('Error loading tennis products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }

  void toggleFavorite(int index) {
    final product = tennisProducts[index];
    Get.find<FavoritesController>().toggleFavorite(product);
  }
}
