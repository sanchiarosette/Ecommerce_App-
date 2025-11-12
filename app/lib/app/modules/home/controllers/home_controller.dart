import 'package:get/get.dart';

import '../../../../utils/dummy_helper.dart';
import '../../../data/models/product_model.dart';
import '../../favorites/controllers/favorites_controller.dart';

class HomeController extends GetxController {
  RxList<ProductModel> products = <ProductModel>[].obs;
  RxList<ProductModel> filteredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  getProducts() {
    // Create completely independent copies of products for home page
    products.value = DummyHelper.products.map((product) => ProductModel(
      id: DummyHelper.nextId,
      image: product.image,
      name: product.name,
      quantity: product.quantity,
      price: product.price,
      rating: product.rating,
      reviews: product.reviews,
      size: product.size,
      isFavorite: false, // Always start as not favorite
      weight: product.weight,
      description: product.description,
      category: product.category,
      subcategory: product.subcategory,
    )).toList();
    filteredProducts.value = products;
  }

  void searchProducts(String query) {
    if (query.isEmpty) {
      filteredProducts.value = products;
    } else {
      filteredProducts.value = products
          .where((product) =>
              product.name!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  void toggleFavorite(ProductModel product) {
    // Use the global favorites controller directly
    Get.find<FavoritesController>().toggleFavorite(product);
    // The UI will update through the FavoriteIcon's Obx
  }
}
