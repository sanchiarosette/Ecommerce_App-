import 'package:get/get.dart';

import '../../../../app/routes/app_pages.dart';
import '../../../data/models/product_model.dart';

class CartController extends GetxController {
  // to hold the products in cart with their quantities
  RxList<Map<String, dynamic>> cartItems = <Map<String, dynamic>>[].obs;

  // to hold the total price of the cart products
  var total = 0.0.obs;


  /// Add product to cart
  void addToCart(ProductModel product, {int quantity = 1}) {
    final existingIndex =
        cartItems.indexWhere((item) => item['product'].id == product.id);

    if (existingIndex != -1) {
      // Product already in cart, increase quantity
      cartItems[existingIndex]['quantity'] =
          cartItems[existingIndex]['quantity'] + quantity;
    } else {
      // Add new product to cart
      cartItems.add({
        'product': product,
        'quantity': quantity,
      });
    }
    calculateTotal();
  }

  /// Remove product from cart completely
  void removeFromCart(int productId) {
    cartItems.removeWhere((item) => item['product'].id == productId);
    calculateTotal();
  }

  /// Remove all items from cart
  void clearCart() {
    cartItems.clear();
    calculateTotal();
  }

  /// Increase quantity of a product in cart
  void increaseQuantity(int productId) {
    final index =
        cartItems.indexWhere((item) => item['product'].id == productId);
    if (index != -1) {
      cartItems[index]['quantity'] = cartItems[index]['quantity'] + 1;
      cartItems.refresh();
      calculateTotal();
    }
  }

  /// Decrease quantity of a product in cart
  void decreaseQuantity(int productId) {
    final index =
        cartItems.indexWhere((item) => item['product'].id == productId);
    if (index != -1 && cartItems[index]['quantity'] > 1) {
      cartItems[index]['quantity'] = cartItems[index]['quantity'] - 1;
      cartItems.refresh();
      calculateTotal();
    } else if (index != -1 && cartItems[index]['quantity'] == 1) {
      // Remove item if quantity becomes 0
      removeFromCart(productId);
    }
  }

  /// Get quantity of a product in cart
  int getProductQuantity(int productId) {
    final item =
        cartItems.firstWhereOrNull((item) => item['product'].id == productId);
    return item?['quantity'] ?? 0;
  }

  /// Check if product is in cart
  bool isInCart(int productId) {
    return cartItems.any((item) => item['product'].id == productId);
  }

  /// Calculate total price
  void calculateTotal() {
    total.value = cartItems.fold<double>(
        0, (sum, item) => sum + (item['product'].price * item['quantity']));
  }

  /// Get cart products list for UI
  List<Map<String, dynamic>> get products => cartItems;

  /// when the user press on purchase now button
  onPurchaseNowPressed() {
    if (cartItems.isNotEmpty) {
      Get.toNamed(Routes.buyNow, arguments: cartItems);
    }
  }
}
