import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class PartsController extends GetxController {
  final RxList<ProductModel> parts = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadParts();
  }

  void loadParts() {
    // Get products with unique IDs starting from 300
    final partsData = DummyHelper.getParts();
    int id = 300;
    final partsWithIds = partsData.map((part) {
      return ProductModel(
        id: id++,
        image: part.image,
        name: part.name,
        quantity: part.quantity,
        price: part.price,
        rating: part.rating,
        reviews: part.reviews,
        size: part.size,
        isFavorite: part.isFavorite,
        weight: part.weight,
        description: part.description,
        category: part.category,
        subcategory: part.subcategory,
      );
    }).toList();
    parts.assignAll(partsWithIds);
  }

  void toggleFavorite(int index) {
    if (index < parts.length) {
      final product = parts[index];
      // Use the global favorites controller to toggle favorite
      Get.find<FavoritesController>().toggleFavorite(product);
      // The UI will automatically update due to reactive nature
    }
  }

  void addToCart(int index) {
    if (index < parts.length) {
      final product = parts[index];
      Get.find<CartController>().addToCart(product);
      Get.snackbar('Added to Cart', '${product.name} added to cart!');
    }
  }
}
