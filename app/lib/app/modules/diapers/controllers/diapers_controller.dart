import 'package:get/get.dart';
import 'package:logging/logging.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';

class DiapersController extends GetxController {
  final RxList<ProductModel> diapersProducts = <ProductModel>[].obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadDiapersProducts();
  }

  void loadDiapersProducts() {
    try {
      isLoading.value = true;
      final products = DummyHelper.getDiapers();
      diapersProducts.value = products
          .map((product) => ProductModel.fromMap({
                ...product.toMap(),
                'id': DummyHelper.nextId,
                'isFavorite': false,
              }))
          .toList();
    } catch (e) {
      Logger('DiapersController')
          .severe('Error loading diapers products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }

  void toggleFavorite(int index) {
    final product = diapersProducts[index];
    Get.find<FavoritesController>().toggleFavorite(product);
  }
}
