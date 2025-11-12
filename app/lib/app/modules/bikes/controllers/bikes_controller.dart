import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class BikesController extends GetxController {
  final RxBool isLoading = true.obs;
  final RxList<ProductModel> bikes = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadBikes();
  }

  void loadBikes() {
    isLoading.value = true;
    // Get products with unique IDs starting from 100
    final bikesData = DummyHelper.getBikes();
    int id = 100;
    final bikesWithIds = bikesData.map((bike) {
      return ProductModel(
        id: id++,
        image: bike.image,
        name: bike.name,
        quantity: bike.quantity,
        price: bike.price,
        rating: bike.rating,
        reviews: bike.reviews,
        size: bike.size,
        isFavorite: bike.isFavorite,
        weight: bike.weight,
        description: bike.description,
        category: bike.category,
        subcategory: bike.subcategory,
      );
    }).toList();
    bikes.assignAll(bikesWithIds);
    isLoading.value = false;
  }

  void toggleFavorite(int index) {
    if (index < bikes.length) {
      final product = bikes[index];
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
