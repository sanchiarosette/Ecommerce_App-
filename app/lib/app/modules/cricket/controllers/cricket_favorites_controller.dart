import 'package:get/get.dart';

import '../../../data/models/product_model.dart';

class CricketFavoritesController extends GetxController {
  // All cricket products are favorited together
  var allFavorited = false.obs;

  /// toggle favorite status for all cricket items
  void toggleAllFavorites(List<ProductModel> products) {
    allFavorited.value = !allFavorited.value;

    // Update all products' favorite status
    for (var product in products) {
      product.isFavorite = allFavorited.value;
    }
  }

  /// check if all cricket items are favorited
  bool areAllFavorited(List<ProductModel> products) {
    return products.every((product) => product.isFavorite == true);
  }

  /// initialize favorite status based on current products
  void initializeFavorites(List<ProductModel> products) {
    allFavorited.value = areAllFavorited(products);
  }
}