import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class TrucksController extends GetxController {
  final RxList<ProductModel> trucks = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadTrucks();
  }

  void loadTrucks() {
    // Get products with unique IDs starting from 200
    final trucksData = DummyHelper.getTrucks();
    int id = 200;
    final trucksWithIds = trucksData.map((truck) {
      return ProductModel(
        id: id++,
        image: truck.image,
        name: truck.name,
        quantity: truck.quantity,
        price: truck.price,
        rating: truck.rating,
        reviews: truck.reviews,
        size: truck.size,
        isFavorite: truck.isFavorite,
        weight: truck.weight,
        description: truck.description,
        category: truck.category,
        subcategory: truck.subcategory,
      );
    }).toList();
    trucks.assignAll(trucksWithIds);
  }

  void toggleFavorite(int index) {
    if (index < trucks.length) {
      final product = trucks[index];
      // Use the global favorites controller to toggle favorite
      Get.find<FavoritesController>().toggleFavorite(product);
      // The UI will automatically update due to reactive nature
    }
  }

  void addToCart(int index) {
    if (index < trucks.length) {
      final product = trucks[index];
      Get.find<CartController>().addToCart(product);
      Get.snackbar('Added to Cart', '${product.name} added to cart!');
    }
  }
}
