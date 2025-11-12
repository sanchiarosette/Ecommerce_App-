import 'package:get/get.dart';
import 'package:logging/logging.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';

class CricketController extends GetxController {
  final RxList<ProductModel> cricketProducts = <ProductModel>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadCricketProducts();
  }

  void loadCricketProducts() {
    try {
      isLoading.value = true;
      final products = DummyHelper.getCricket();
      cricketProducts.value = products
          .map((product) => ProductModel.fromMap({
                ...product.toMap(),
                'id': DummyHelper.nextId,
                'isFavorite': false,
              }))
          .toList();
    } catch (e) {
      Logger('CricketController').severe('Error loading cricket products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }

  void toggleFavorite(int index) {
    final product = cricketProducts[index];
    Get.find<FavoritesController>().toggleFavorite(product);
  }
}
