import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../../../data/models/product_model.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class BagsController extends GetxController {
  var bags = <Map<String, dynamic>>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadBags();
  }

  void loadBags() async {
    isLoading.value = true;

    // Load dynamic bag items from assets
    List<Map<String, dynamic>> dynamicBags = await loadDynamicBags();

    // Use only dynamic bags to avoid duplicates
    bags.value = dynamicBags;
    isLoading.value = false;
  }

  Future<List<Map<String, dynamic>>> loadDynamicBags() async {
    List<Map<String, dynamic>> dynamicBags = [];

    try {
      // Load the asset manifest to get all asset paths
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifestMap = json.decode(manifestContent);

      // Filter for bag images
      final bagAssets = manifestMap.keys
          .where((String key) => key.startsWith('assets/bags/'))
          .toList();

      int id = 3000; // Start IDs from 3000 for dynamic items

      for (String assetPath in bagAssets) {
        // Extract name from filename (remove extension and path)
        String fileName = assetPath.split('/').last;
        String name = fileName.replaceAll('.jpg', '').replaceAll('.png', '').replaceAll('.jpeg', '');

        // Create product map
        Map<String, dynamic> productMap = {
          'id': id++,
          'name': name,
          'price': 7999.0, // Placeholder price
          'rating': 4.5,
          'reviews': '20 reviews',
          'image': assetPath,
          'size': 'Medium', // Placeholder size
          'weight': '1.2kg',
          'description': 'Stylish and durable bag from our premium collection.',
          'category': 'Fashion',
          'subcategory': 'Bags',
          'isFavorite': false,
        };

        dynamicBags.add(productMap);
      }
    } catch (e) {
      debugPrint('Error loading dynamic bags: $e');
    }

    return dynamicBags;
  }

  void toggleFavorite(int index) {
    if (index < bags.length) {
      final productMap = bags[index];
      // Convert map to ProductModel for global toggle
      final product = ProductModel.fromMap(productMap);
      // Use the global favorites controller to toggle favorite
      Get.find<FavoritesController>().toggleFavorite(product);
      // Update the local map to reflect the change
      productMap['isFavorite'] =
          Get.find<FavoritesController>().isFavorite(product);
      bags[index] = productMap;
      bags.refresh();
    }
  }

  void addToCart(int index) {
    if (index < bags.length) {
      final productMap = bags[index];
      final product = ProductModel.fromMap(productMap);
      Get.find<CartController>().addToCart(product);
      Get.snackbar('Added to Cart', '${product.name} added to cart!');
    }
  }
}
