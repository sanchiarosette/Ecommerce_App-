import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class BabiesClothingController extends GetxController {
  final RxList<ProductModel> babiesClothing = <ProductModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadBabiesClothing();
  }

  void loadBabiesClothing() async {
    isLoading.value = true;

    // Load static baby clothing items with images from assets
    babiesClothing.value = [
      ProductModel(
        id: 5000,
        name: 'BabyFrock',
        price: 599.0,
        rating: 4.5,
        image: 'assets/images/babyfrock.jpg',
        size: '0-12 months',
        weight: '0.3kg',
        description: 'Adorable baby frock from our premium collection.',
        category: 'Babies',
        subcategory: 'Clothing',
        isFavorite: false,
      ),
      ProductModel(
        id: 5001,
        name: 'BabyRomper',
        price: 699.0,
        rating: 4.7,
        image: 'assets/images/Babyromper.jpg',
        size: '0-12 months',
        weight: '0.25kg',
        description: 'Comfortable baby romper perfect for everyday wear.',
        category: 'Babies',
        subcategory: 'Clothing',
        isFavorite: false,
      ),
      ProductModel(
        id: 5002,
        name: 'BabySweater',
        price: 799.0,
        rating: 4.6,
        image: 'assets/images/BabySweater.webp',
        size: '0-12 months',
        weight: '0.4kg',
        description: 'Warm and cozy baby sweater for chilly days.',
        category: 'Babies',
        subcategory: 'Clothing',
        isFavorite: false,
      ),
      ProductModel(
        id: 5003,
        name: 'Jumpsuit',
        price: 899.0,
        rating: 4.8,
        image: 'assets/images/Jumpsuit.jpg',
        size: '0-12 months',
        weight: '0.35kg',
        description: 'Stylish jumpsuit for your little one.',
        category: 'Babies',
        subcategory: 'Clothing',
        isFavorite: false,
      ),
      ProductModel(
        id: 5004,
        name: 'Onesie',
        price: 499.0,
        rating: 4.4,
        image: 'assets/images/Onesie.jpg',
        size: '0-12 months',
        weight: '0.2kg',
        description: 'Classic onesie for ultimate comfort.',
        category: 'Babies',
        subcategory: 'Clothing',
        isFavorite: false,
      ),
      ProductModel(
        id: 5005,
        name: 'Jackets',
        price: 899.0,
        rating: 4.6,
        image: 'assets/images/baby sweater.jpg', // Using baby sweater as jackets image
        size: '0-12 months',
        weight: '0.5kg',
        description: 'Warm and stylish jackets for your little one.',
        category: 'Babies',
        subcategory: 'Clothing',
        isFavorite: false,
      ),
    ];
    isLoading.value = false;
  }


  void toggleFavorite(int index) {
    final product = babiesClothing[index];
    Get.find<FavoritesController>().toggleFavorite(product);
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar(
      'Added to Cart',
      '${product.name} has been added to your cart.',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 2),
    );
  }
}
