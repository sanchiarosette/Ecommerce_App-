import 'package:get/get.dart';
import 'package:logging/logging.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';

class ClothingController extends GetxController {
  final RxList<ProductModel> clothingProducts = <ProductModel>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadClothingProducts();
  }

  void loadClothingProducts() {
    try {
      isLoading.value = true;
      final products = DummyHelper.subcategoryProducts['clothing'] ?? [];
      clothingProducts.value = products
          .map((product) => ProductModel.fromMap({
                ...product,
                'id': DummyHelper.nextId,
                'isFavorite': false,
              }))
          .toList();
    } catch (e) {
      Logger('ClothingController')
          .severe('Error loading clothing products: $e');
    } finally {
      isLoading.value = false;
    }
  }


  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }

  void toggleFavorite(int index) {
    final product = clothingProducts[index];
    Get.find<FavoritesController>().toggleFavorite(product);
  }
}
