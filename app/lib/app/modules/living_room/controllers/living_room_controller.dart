import 'package:get/get.dart';

import '../../../../utils/dummy_helper.dart';
import '../../../data/models/product_model.dart';
import '../../favorites/controllers/favorites_controller.dart';

class LivingRoomController extends GetxController {
  RxList<ProductModel> products = <ProductModel>[].obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  getProducts() {
    isLoading.value = true;
    products.value = DummyHelper.getLivingRoom();
    isLoading.value = false;
  }

  void toggleFavorite(int index) {
    // Let the FavoritesController handle the toggle
    Get.find<FavoritesController>().toggleFavorite(products[index]);
    // Refresh the local products list to reflect changes
    products.refresh();
  }

  void addToCart(ProductModel product) {
    // Add to cart logic here
    Get.snackbar('Added to Cart', '${product.name} added to cart');
  }
}