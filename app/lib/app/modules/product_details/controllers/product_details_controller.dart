import 'package:get/get.dart';

import '../../../../app/data/models/product_model.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';

class ProductDetailsController extends GetxController {
  // get product details from arguments
  late ProductModel product;

  @override
  void onInit() {
    super.onInit();
    // Safely get product from arguments
    final args = Get.arguments;
    if (args is ProductModel) {
      product = args;
    } else if (args is Map<String, dynamic>) {
      // Handle nested product map
      final productData = args['product'] ?? args;
      product = ProductModel.fromJson(productData);
    } else {
      // Fallback - create empty product (this shouldn't happen in normal flow)
      product = ProductModel();
    }
  }

  // for the product size
  var selectedSize = 'M';

  /// when the user press on the favorite button
  onFavoriteButtonPressed() {
    // Use the global favorites controller directly
    Get.find<FavoritesController>().toggleFavorite(product);
    // Update the product details view
    update(['FavoriteButton']);
  }

  /// when the user press on add to cart button
  onAddToCartPressed() {
    var cartController = Get.find<CartController>();
    if (cartController.isInCart(product.id!)) {
      // Remove from cart
      cartController.removeFromCart(product.id!);
      Get.snackbar(
        'Removed from Cart',
        '${product.name} removed from cart!',
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      // Add to cart
      cartController.addToCart(product);
      Get.snackbar(
        'Added to Cart',
        '${product.name} added to cart!',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
    // Don't navigate to cart automatically, just show snackbar
  }

  /// change the selected size
  changeSelectedSize(String size) {
    if (size == selectedSize) return;
    selectedSize = size;
    update(['Size']);
  }
}
