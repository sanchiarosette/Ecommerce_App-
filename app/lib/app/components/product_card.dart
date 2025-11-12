import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../data/models/product_model.dart';
import '../modules/favorites/controllers/favorites_controller.dart';
import '../modules/cart/controllers/cart_controller.dart';

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteToggle;
  final VoidCallback? onAddToCart;
  final VoidCallback? onBuyNow;

  const ProductCard({
    Key? key,
    required this.product,
    this.onTap,
    this.onFavoriteToggle,
    this.onAddToCart,
    this.onBuyNow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.3),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             // Product Image
             Stack(
               children: [
                Container(
                  height: 120.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12.r)),
                  ),
                  child: Image.asset(
                    product['image'],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      // Show placeholder if image fails to load
                      debugPrint('Image load error for ${product['name']}: $error');
                      return Container(
                        color: Colors.grey[200],
                        child: Icon(
                          Icons.image_not_supported,
                          color: Colors.grey[400],
                          size: 40.sp,
                        ),
                      );
                    },
                  ),
                ),
                // Favorite Icon
                Positioned(
                  top: 8.h,
                  right: 8.w,
                  child: Builder(
                    builder: (context) {
                      final favController = Get.find<FavoritesController>();
                      // Create ProductModel with ID from the map data
                      final productModel = ProductModel.fromJson({
                        ...product,
                        'id': product['id'] ?? DateTime.now().millisecondsSinceEpoch,
                      });
                      return Obx(() {
                        final isFavorite = favController.isFavorite(productModel);
                        return IconButton(
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.grey,
                            size: 20.sp,
                          ),
                          onPressed: onFavoriteToggle ?? () {
                            favController.toggleFavorite(productModel);
                            if (favController.isFavorite(productModel)) {
                              Get.toNamed('/favorites');
                            }
                          },
                        );
                      });
                    },
                  ),
                ),
              ],
            ),

            // Product Details
            Padding(
              padding: EdgeInsets.all(12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Name
                  Text(
                    product['name'],
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 4.h),

                  // Price
                  Text(
                    '₹${product['price'].toStringAsFixed(0)}',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),

                  SizedBox(height: 4.h),

                  // Rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 14.sp,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        product['rating'].toString(),
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 6.h),

                  // Short Description
                  Text(
                    product['description'],
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey[600],
                      height: 1.2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  SizedBox(height: 8.h),

                  // Attributes
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.straighten,
                            size: 11.sp,
                            color: Colors.grey[500],
                          ),
                          SizedBox(width: 2.w),
                          Expanded(
                            child: Text(
                              'Size: ${product['size']}',
                              style: TextStyle(
                                fontSize: 9.sp,
                                color: Colors.grey[500],
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          Icon(
                            Icons.monitor_weight,
                            size: 11.sp,
                            color: Colors.grey[500],
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            product['weight'],
                            style: TextStyle(
                              fontSize: 9.sp,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 6.h),

                  // Action Buttons Row
                  Row(
                    children: [
                      // Add to Cart Button
                      Expanded(
                        child: SizedBox(
                          height: 28.h,
                          child: OutlinedButton(
                            onPressed: onAddToCart ?? () {
                              // Create ProductModel from map data
                              final productModel = ProductModel.fromJson({
                                ...product,
                                'id': product['id'] ?? DateTime.now().millisecondsSinceEpoch,
                              });
                              // Add to cart using CartController
                              Get.find<CartController>().addToCart(productModel);
                              Get.snackbar(
                                'Added to Cart',
                                '${product['name']} added to cart!',
                                snackPosition: SnackPosition.BOTTOM,
                                duration: const Duration(seconds: 2),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Theme.of(context).primaryColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              padding: EdgeInsets.zero,
                              textStyle: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(color: Theme.of(context).primaryColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6.w),
                      // Buy Now Button
                      Expanded(
                        child: SizedBox(
                          height: 28.h,
                          child: ElevatedButton(
                            onPressed: onBuyNow ?? () {
                              // Create ProductModel from map data
                              final productModel = ProductModel.fromJson({
                                ...product,
                                'id': product['id'] ?? DateTime.now().millisecondsSinceEpoch,
                              });
                              // Navigate to buy now flow
                              Get.toNamed('/buy-now', arguments: productModel);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              padding: EdgeInsets.zero,
                              textStyle: TextStyle(
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            child: const Text('Buy Now'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ),
);
}
}
