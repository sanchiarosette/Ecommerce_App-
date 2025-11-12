import 'package:get/get.dart';
import 'package:logging/logging.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';

class ElectronicsAccessoriesController extends GetxController {
  final RxList<ProductModel> electronicsAccessoriesProducts = <ProductModel>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadElectronicsAccessoriesProducts();
  }

  void loadElectronicsAccessoriesProducts() {
    try {
      isLoading.value = true;
      final rawData =
          DummyHelper.subcategoryProducts['electronics_accessories'] ?? [];
      electronicsAccessoriesProducts.value = rawData
          .map((e) => ProductModel.fromMap({
                ...Map<String, dynamic>.from(e),
                'id': DummyHelper.nextId,
                'isFavorite': false,
              }))
          .toList();
    } catch (e) {
      Logger('ElectronicsAccessoriesController')
          .severe('Error loading electronics accessories products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }

  void toggleFavorite(int index) {
    final product = electronicsAccessoriesProducts[index];
    Get.find<FavoritesController>().toggleFavorite(product);
  }
}
