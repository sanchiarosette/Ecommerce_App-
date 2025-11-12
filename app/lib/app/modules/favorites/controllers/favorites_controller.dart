import 'package:get/get.dart';

import '../../../data/models/product_model.dart';

class FavoritesController extends GetxController {
  // Global list of favorite products
  var favorites = <ProductModel>[].obs;

  /// get the favorite products from the product list (for backward compatibility)
  void getFavoriteProducts() {
    // This method is kept for backward compatibility with existing code
    // The favorites list is now maintained directly
  }

  /// toggle favorite status of a product
  void toggleFavorite(ProductModel product) {
    // Ensure the product has an ID
    product.id ??= DateTime.now().millisecondsSinceEpoch;

    // Check if the product is already in favorites
    final existingIndex = favorites.indexWhere((p) => p.id == product.id);
    if (existingIndex != -1) {
      // Remove from favorites if already there
      favorites.removeAt(existingIndex);
      product.isFavorite = false;
    } else {
      // Add to favorites if not there
      // Create a copy of the product to avoid reference issues
      final favoriteProduct = ProductModel(
        id: product.id,
        image: product.image,
        name: product.name,
        quantity: product.quantity,
        price: product.price,
        rating: product.rating,
        reviews: product.reviews,
        size: product.size,
        isFavorite: true,
        weight: product.weight,
        description: product.description,
        category: product.category,
        subcategory: product.subcategory,
      );
      favorites.add(favoriteProduct);
      product.isFavorite = true;
    }
  }

  /// check if a product is favorite
  bool isFavorite(ProductModel product) {
    return favorites.any((p) => p.id == product.id);
  }

  /// remove product from favorites
  void removeFromFavorites(ProductModel product) {
    favorites.removeWhere((p) => p.id == product.id);
    product.isFavorite = false;
  }
}
