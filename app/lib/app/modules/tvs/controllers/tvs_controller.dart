import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../../../data/models/product_model.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class TvsController extends GetxController {
  var products = <ProductModel>[].obs;
  var tvs = <ProductModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadTvs();
  }

  void loadTvs() async {
    isLoading.value = true;

    // Load dynamic tv items from assets
    List<ProductModel> dynamicTvs = await loadDynamicTvs();

    // Use only dynamic tvs to avoid duplicates
    products.value = dynamicTvs;
    tvs.value = dynamicTvs;
    isLoading.value = false;
  }

  Future<List<ProductModel>> loadDynamicTvs() async {
    List<ProductModel> dynamicTvs = [];

    try {
      // Load the asset manifest to get all asset paths
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifestMap = json.decode(manifestContent);

      // Filter for tv images - assuming tv assets are in assets/tvs/
      final tvAssets = manifestMap.keys
          .where((String key) => key.startsWith('assets/tvs/'))
          .toList();

      int id = 2000; // Start IDs from 2000 for dynamic items

      for (String assetPath in tvAssets) {
        // Extract name from filename (remove extension and path)
        String fileName = assetPath.split('/').last;
        String name = fileName.replaceAll('.jpg', '').replaceAll('.png', '').replaceAll('.jpeg', '');

        // Create product
        ProductModel product = ProductModel(
          id: id++,
          name: name,
          price: 29999.0, // Placeholder price
          rating: 4.5,
          reviews: [],
          image: assetPath,
          size: '32 inch', // Placeholder size
          weight: '5.0kg',
          description: 'High-quality TV from our collection.',
          category: 'Electronics',
          subcategory: 'TVs',
          isFavorite: false,
        );

        dynamicTvs.add(product);
      }
    } catch (e) {
      debugPrint('Error loading dynamic tvs: $e');
    }

    return dynamicTvs;
  }

  void toggleFavorite(int index) {
    if (index < tvs.length) {
      final product = tvs[index];
      // Use the global favorites controller to toggle favorite
      Get.find<FavoritesController>().toggleFavorite(product);
      // Update the local product to reflect the change
      product.isFavorite = Get.find<FavoritesController>().isFavorite(product);
      tvs[index] = product;
      tvs.refresh();
    }
  }

  void addToCart(int index) {
    if (index < tvs.length) {
      final product = tvs[index];
      Get.find<CartController>().addToCart(product);
      Get.snackbar('Added to Cart', '${product.name} added to cart!');
    }
  }
}