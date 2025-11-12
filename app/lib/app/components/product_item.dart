import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../app/data/models/product_model.dart';
import '../../app/routes/app_pages.dart';
import 'custom_rating_bar.dart';
import 'favorite_icon.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return GestureDetector(
      onTap: () => Get.toNamed(
        Routes.productDetails,
        arguments: product,
      ),
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
              mainAxisSize: MainAxisSize.min,
              children: [
                // Image Container with fixed height
                SizedBox(
                  height: 140.h, // Slightly taller for grid layout
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(12.r)),
                          color: Colors.grey[100],
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(12.r)),
                          child: _buildProductImage(),
                        ),
                      ),
                      Positioned(
                        top: 6.h,
                        right: 6.w,
                        child: FavoriteIcon(product: product, size: 18),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Product Name
                      Text(
                        product.name ?? 'Unknown Product',
                        style: theme.textTheme.bodyLarge?.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      // Rating
                      CustomRatingBar(
                          rating: product.rating ?? 0.0, itemSize: 12),
                      SizedBox(height: 4.h),
                      // Price
                      Text(
                        '₹${product.price?.toStringAsFixed(0) ?? '0'}',
                        style: theme.textTheme.displayLarge?.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: theme.primaryColor,
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
    ).animate().fade().slideY(
          duration: const Duration(milliseconds: 300),
          begin: 0.1,
          curve: Curves.easeInSine,
        );
  }

  Widget _buildProductImage() {
    final imagePath = product.image;
    if (imagePath == null || imagePath.isEmpty) {
      return Container(
        color: Colors.grey[200],
        child: Icon(
          Icons.image_not_supported,
          color: Colors.grey[400],
          size: 40.sp,
        ),
      );
    }

    return Image.asset(
      imagePath,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (context, error, stackTrace) {
        debugPrint('Image load error for ${product.name}: $error');
        debugPrint('Attempted path: $imagePath');
        return Container(
          color: Colors.grey[200],
          child: Icon(
            Icons.image_not_supported,
            color: Colors.grey[400],
            size: 40.sp,
          ),
        );
      },
    );
  }
}
