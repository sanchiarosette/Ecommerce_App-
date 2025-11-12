import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../../../data/models/product_model.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../cart/controllers/cart_controller.dart';

class ShoesController extends GetxController {
  var shoes = <Map<String, dynamic>>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    loadShoes();
  }

  void loadShoes() async {
    isLoading.value = true;

    // Load dynamic shoe items from assets
    List<Map<String, dynamic>> dynamicShoes = await loadDynamicShoes();

    // Use only dynamic shoes to avoid duplicates
    shoes.value = dynamicShoes;
    isLoading.value = false;
  }

  Future<List<Map<String, dynamic>>> loadDynamicShoes() async {
    List<Map<String, dynamic>> dynamicShoes = [];

    try {
      // Load the asset manifest to get all asset paths
      final manifestContent = await rootBundle.loadString('AssetManifest.json');
      final Map<String, dynamic> manifestMap = json.decode(manifestContent);

      // Filter for shoe images
      final shoeAssets = manifestMap.keys
          .where((String key) => key.startsWith('assets/shoes/'))
          .toList();

      int id = 1000; // Start IDs from 1000 for dynamic items

      for (String assetPath in shoeAssets) {
        // Extract name from filename (remove extension and path)
        String fileName = assetPath.split('/').last;
        String name = fileName.replaceAll('.jpg', '').replaceAll('.png', '').replaceAll('.jpeg', '');

        // Create product map
        Map<String, dynamic> productMap = {
          'id': id++,
          'name': name,
          'price': 4999.0, // Placeholder price
          'rating': 4.5,
          'reviews': '10 reviews',
          'image': assetPath,
          'size': '8-12', // Placeholder size
          'weight': '0.8kg',
          'description': 'Comfortable and stylish shoe from our collection.',
          'category': 'Fashion',
          'subcategory': 'Shoes',
          'isFavorite': false,
        };

        dynamicShoes.add(productMap);
      }
    } catch (e) {
      debugPrint('Error loading dynamic shoes: $e');
    }

    return dynamicShoes;
  }

  void toggleFavorite(int index) {
    if (index < shoes.length) {
      final productMap = shoes[index];
      // Convert map to ProductModel for global toggle
      final product = ProductModel.fromMap(productMap);
      // Use the global favorites controller to toggle favorite
      Get.find<FavoritesController>().toggleFavorite(product);
      // Update the local map to reflect the change
      productMap['isFavorite'] =
          Get.find<FavoritesController>().isFavorite(product);
      shoes[index] = productMap;
      shoes.refresh();
    }
  }

  void addToCart(int index) {
    if (index < shoes.length) {
      final productMap = shoes[index];
      final product = ProductModel.fromMap(productMap);
      Get.find<CartController>().addToCart(product);
      Get.snackbar('Added to Cart', '${product.name} added to cart!');
    }
  }
}
