import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../../../data/models/product_model.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class AccessoriesController extends GetxController {
  var accessories = <Map<String, dynamic>>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadAccessories();
  }

  void loadAccessories() async {
    isLoading.value = true;

    // Load dynamic accessory items from assets
    List<Map<String, dynamic>> dynamicAccessories = await loadDynamicAccessories();

    // Use only dynamic accessories to avoid duplicates
    accessories.value = dynamicAccessories;
    isLoading.value = false;
  }

  Future<List<Map<String, dynamic>>> loadDynamicAccessories() async {
    List<Map<String, dynamic>> dynamicAccessories = [];

    try {
      // Load the asset manifest to get all asset paths
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifestMap = json.decode(manifestContent);

      // Filter for accessory images
      final accessoryAssets = manifestMap.keys
          .where((String key) => key.startsWith('assets/accessories/'))
          .toList();

      int id = 2000; // Start IDs from 2000 for dynamic items

      for (String assetPath in accessoryAssets) {
        // Extract name from filename (remove extension and path)
        String fileName = assetPath.split('/').last;
        String name = fileName.replaceAll('.jpg', '').replaceAll('.png', '').replaceAll('.jpeg', '');

        // Create product map
        Map<String, dynamic> productMap = {
          'id': id++,
          'name': name,
          'price': 2999.0, // Placeholder price
          'rating': 4.5,
          'reviews': '15 reviews',
          'image': assetPath,
          'size': 'One Size', // Placeholder size
          'weight': '0.1kg',
          'description': 'Elegant accessory from our luxury collection.',
          'category': 'Fashion',
          'subcategory': 'Accessories',
          'isFavorite': false,
        };

        dynamicAccessories.add(productMap);
      }
    } catch (e) {
      // Log error in development, but avoid print in production
      debugPrint('Error loading dynamic accessories: $e');
    }

    return dynamicAccessories;
  }

  void toggleFavorite(int index) {
    if (index < accessories.length) {
      final productMap = accessories[index];
      // Convert map to ProductModel for global toggle
      final product = ProductModel.fromMap(productMap);
      // Use the global favorites controller to toggle favorite
      Get.find<FavoritesController>().toggleFavorite(product);
      // Update the local map to reflect the change
      productMap['isFavorite'] =
          Get.find<FavoritesController>().isFavorite(product);
      accessories[index] = productMap;
      accessories.refresh();
    }
  }

  void addToCart(int index) {
    if (index < accessories.length) {
      final productMap = accessories[index];
      final product = ProductModel.fromMap(productMap);
      Get.find<CartController>().addToCart(product);
      Get.snackbar('Added to Cart', '${product.name} added to cart!');
    }
  }
}
