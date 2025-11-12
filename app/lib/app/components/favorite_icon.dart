import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../app/data/models/product_model.dart';
import '../modules/favorites/controllers/favorites_controller.dart';

class FavoriteIcon extends StatelessWidget {
  final ProductModel product;
  final double size;

  const FavoriteIcon({
    Key? key,
    required this.product,
    this.size = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final favController = Get.find<FavoritesController>();
      final isFavorite = favController.isFavorite(product);
      return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : Colors.grey,
          size: size.sp,
        ),
        onPressed: () {
          // Only toggle this specific product's favorite status
          if (isFavorite) {
            favController.removeFromFavorites(product);
            product.isFavorite = false;
          } else {
            favController.toggleFavorite(product);
          }
        },
      );
    });
  }
}
