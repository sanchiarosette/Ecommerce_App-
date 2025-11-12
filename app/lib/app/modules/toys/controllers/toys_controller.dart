import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../../../utils/dummy_helper.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class ToysController extends GetxController {
  final RxBool isLoading = true.obs;
  final RxList<ProductModel> toys = <ProductModel>[].obs;
  final RxString selectedSubcategory = 'Cars'.obs;

  final List<String> subcategories = ['Cars', 'Bikes', 'Trucks', 'Parts'];

  @override
  void onInit() {
    super.onInit();
    loadToys();
  }

  void loadToys() {
    isLoading.value = true;
    List<ProductModel> products = [];

    switch (selectedSubcategory.value) {
      case 'Cars':
        products = DummyHelper.getCars();
        break;
      case 'Bikes':
        products = DummyHelper.getBikes();
        break;
      case 'Trucks':
        products = DummyHelper.getTrucks();
        break;
      case 'Parts':
        products = DummyHelper.getParts();
        break;
      default:
        products = DummyHelper.getCars();
    }

    toys.value = products;
    isLoading.value = false;
  }

  void changeSubcategory(String subcategory) {
    selectedSubcategory.value = subcategory;
    loadToys();
  }

  void toggleFavorite(int index) {
    if (index < toys.length) {
      final product = toys[index];
      // Use the global favorites controller to toggle favorite
      Get.find<FavoritesController>().toggleFavorite(product);
      // The UI will automatically update due to reactive nature
    }
  }

  void addToCart(ProductModel product) {
    Get.find<CartController>().addToCart(product);
    Get.snackbar('Added to Cart', '${product.name} added to cart!');
  }
}
