import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class OfficeController extends GetxController {
  RxList<ProductModel> products = <ProductModel>[].obs;
  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadOfficeProducts();
  }

  void loadOfficeProducts() {
    isLoading.value = true;
    final rawData = DummyHelper.subcategoryProducts['office'] ?? [];
    products.value = rawData.map((e) => ProductModel.fromJson(Map<String, dynamic>.from(e))).toList();
    isLoading.value = false;
  }

  void loadProducts(List<dynamic> data) {
    products.value = data.map((e) => ProductModel.fromJson(Map<String, dynamic>.from(e))).toList();
  }

  void toggleFavorite(int index) {
    if (index < products.length) {
      final product = products[index];
      final updatedProduct = ProductModel(
        id: product.id,
        image: product.image,
        name: product.name,
        quantity: product.quantity,
        price: product.price,
        rating: product.rating,
        reviews: product.reviews,
        size: product.size,
        isFavorite: !(product.isFavorite ?? false),
        weight: product.weight,
        description: product.description,
        category: product.category,
        subcategory: product.subcategory,
      );
      products[index] = updatedProduct;
      int globalIndex = DummyHelper.products.indexWhere((p) => p.id == product.id);
      if (globalIndex != -1) {
        DummyHelper.products[globalIndex] = updatedProduct;
      }
      Get.find<FavoritesController>().getFavoriteProducts();
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }
}