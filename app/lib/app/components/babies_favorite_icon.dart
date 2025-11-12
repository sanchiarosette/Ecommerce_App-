import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../app/data/models/product_model.dart';
import '../modules/babies/controllers/babies_favorites_controller.dart';

class BabiesFavoriteIcon extends StatelessWidget {
  final ProductModel product;
  final double size;

  const BabiesFavoriteIcon({
    Key? key,
    required this.product,
    this.size = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final babiesFavController = Get.find<BabiesFavoritesController>();
      final isFavorite = babiesFavController.isFavorite(product);
      return IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : Colors.grey,
          size: size.sp,
        ),
        onPressed: () {
          // Toggle favorite using babies favorites controller (single selection)
          babiesFavController.toggleFavorite(product);
        },
      );
    });
  }
}