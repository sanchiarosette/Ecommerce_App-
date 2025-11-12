import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class CarsController extends GetxController {
  final RxBool isLoading = true.obs;
  final RxList<ProductModel> cars = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadCarsProducts();
  }

  void loadCarsProducts() {
    isLoading.value = true;
    // Get raw data from DummyHelper (which are Maps)
    final rawData = DummyHelper.subcategoryProducts['cars'] ?? [];
    // Convert to ProductModel objects with unique IDs
    int id = 1;
    cars.value = rawData.map((e) {
      final map = Map<String, dynamic>.from(e);
      return ProductModel.fromJson({...map, 'id': id++});
    }).toList();
    isLoading.value = false;
  }

  void loadProducts(List<dynamic> data) {
    cars.value = data.map((e) => ProductModel.fromJson(Map<String, dynamic>.from(e))).toList();
  }

  void toggleFavorite(int index) {
    if (index < cars.length) {
      final product = cars[index];
      // Use the global favorites controller to toggle favorite
      Get.find<FavoritesController>().toggleFavorite(product);
      // The UI will automatically update due to reactive nature
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }
}
