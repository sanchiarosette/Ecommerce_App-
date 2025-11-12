import 'package:get/get.dart';

import '../../../data/models/product_model.dart';

class BabiesFavoritesController extends GetxController {
  // Single favorite product for babies category (furniture + diapers)
  var favoriteProduct = Rx<ProductModel?>(null);

  /// toggle favorite status for babies category (single selection)
  void toggleFavorite(ProductModel product) {
    // Ensure the product has an ID
    product.id ??= DateTime.now().millisecondsSinceEpoch;

    // If this product is already favorite, remove it
    if (favoriteProduct.value?.id == product.id) {
      favoriteProduct.value = null;
      product.isFavorite = false;
    } else {
      // Remove favorite from previous product if any
      if (favoriteProduct.value != null) {
        favoriteProduct.value!.isFavorite = false;
      }
      // Set new favorite
      favoriteProduct.value = product;
      product.isFavorite = true;
    }
  }

  /// check if a product is favorite in babies category
  bool isFavorite(ProductModel product) {
    return favoriteProduct.value?.id == product.id;
  }

  /// remove product from favorites
  void removeFromFavorites(ProductModel product) {
    if (favoriteProduct.value?.id == product.id) {
      favoriteProduct.value = null;
      product.isFavorite = false;
    }
  }
}