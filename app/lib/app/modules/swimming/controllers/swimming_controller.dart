import 'package:get/get.dart';

class SwimmingController extends GetxController {
  final isLoading = false.obs;
  final swimmingProducts = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadSwimmingProducts();
  }

  void loadSwimmingProducts() {
    isLoading.value = true;
    // Since swimming category was removed, we'll use empty list
    swimmingProducts.value = [];
    isLoading.value = false;
  }

  void toggleFavorite(int index) {
    // Implementation for toggling favorite
  }

  void addToCart(dynamic product) {
    // Implementation for adding to cart
  }
}