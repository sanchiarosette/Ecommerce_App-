import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../data/models/product_model.dart';
import '../modules/favorites/controllers/favorites_controller.dart';
import '../modules/cart/controllers/cart_controller.dart';

class ProductCardBabies extends StatelessWidget {
  final ProductModel product;
  final VoidCallback? onTap;
  final VoidCallback? onFavoriteToggle;
  final VoidCallback? onAddToCart;

  const ProductCardBabies({
    Key? key,
    required this.product,
    this.onTap,
    this.onFavoriteToggle,
    this.onAddToCart,
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
                      height: 100.h, // Reduced from 120.h to prevent overflow
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(12.r)),
                      ),
                      child: Image.asset(
                        product.image ?? 'assets/images/no_data.png',
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[200],
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.grey[400],
                              size: 30.sp, // Reduced size
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
                          return Obx(() {
                            final isFavorite = favController.isFavorite(product);
                            return IconButton(
                              icon: Icon(
                                isFavorite ? Icons.favorite : Icons.favorite_border,
                                color: isFavorite ? Colors.red : Colors.grey,
                                size: 20.sp,
                              ),
                              onPressed: onFavoriteToggle ?? () {
                                favController.toggleFavorite(product);
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
                  padding: EdgeInsets.all(8.w), // Reduced padding from 12.w
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Name
                      Text(
                        product.name ?? 'Product Name',
                        style: TextStyle(
                          fontSize: 12.sp, // Reduced from 14.sp
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                        maxLines: 1, // Reduced from 2
                        overflow: TextOverflow.ellipsis,
                      ),

                      SizedBox(height: 2.h), // Reduced from 4.h

                      // Price
                      Text(
                        '₹${product.price?.toStringAsFixed(0) ?? '0'}',
                        style: TextStyle(
                          fontSize: 14.sp, // Reduced from 16.sp
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),

                      SizedBox(height: 2.h), // Reduced from 4.h

                      // Rating
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 12.sp, // Reduced from 14.sp
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            product.rating?.toString() ?? '0.0',
                            style: TextStyle(
                              fontSize: 10.sp, // Reduced from 12.sp
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 4.h), // Reduced from 6.h

                      // Short Description
                      Text(
                        product.description ?? 'No description available',
                        style: TextStyle(
                          fontSize: 9.sp, // Reduced from 11.sp
                          color: Colors.grey[600],
                          height: 1.2, // Reduced from 1.3
                        ),
                        maxLines: 1, // Reduced from 2
                        overflow: TextOverflow.ellipsis,
                      ),

                      SizedBox(height: 4.h), // Reduced from 8.h

                      // Attributes (Simplified)
                      Text(
                        'Size: ${product.size ?? 'N/A'}',
                        style: TextStyle(
                          fontSize: 8.sp, // Reduced from 10.sp
                          color: Colors.grey[500],
                        ),
                      ),

                      SizedBox(height: 4.h), // Reduced from 8.h

                      // Add to Cart Button
                      SizedBox(
                        width: double.infinity,
                        height: 28.h, // Reduced from 32.h
                        child: OutlinedButton(
                          onPressed: onAddToCart ?? () {
                            Get.find<CartController>().addToCart(product);
                            Get.snackbar(
                              'Added to Cart',
                              '${product.name} has been added to your cart.',
                              snackPosition: SnackPosition.BOTTOM,
                              duration: const Duration(seconds: 2),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Theme.of(context).primaryColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.r), // Reduced from 6.r
                            ),
                            padding: EdgeInsets.zero,
                            textStyle: TextStyle(
                              fontSize: 10.sp, // Reduced from 12.sp
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(color: Theme.of(context).primaryColor),
                          ),
                        ),
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