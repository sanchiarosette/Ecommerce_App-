import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../babies/controllers/babies_favorites_controller.dart';

class BabiesFurnitureController extends GetxController {
  final RxBool isLoading = true.obs;
  final RxList<ProductModel> babiesFurniture = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  void loadProducts() {
    isLoading.value = true;
    babiesFurniture.assignAll(DummyHelper.getBabiesFurniture());
    isLoading.value = false;
  }

  void toggleFavorite(int index) {
    if (index >= 0 && index < babiesFurniture.length) {
      final product = babiesFurniture[index];
      // Use the babies favorites controller for single selection
      Get.find<BabiesFavoritesController>().toggleFavorite(product);
      // Update the local product list to reflect the change
      babiesFurniture[index].isFavorite =
          Get.find<BabiesFavoritesController>().isFavorite(product);
      babiesFurniture.refresh();
    }
  }

  void addToCart(ProductModel product) {
    // Implement add to cart logic
  }
}
