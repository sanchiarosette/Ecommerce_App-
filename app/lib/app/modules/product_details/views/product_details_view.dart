import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_rating_bar.dart';
import '../controllers/product_details_controller.dart';
import '../views/widgets/size_item.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = controller.product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name ?? 'Product Details'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        actions: [
          GetBuilder<ProductDetailsController>(
            id: 'FavoriteButton',
            builder: (controller) => IconButton(
              icon: Icon(
                product.isFavorite == true
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: product.isFavorite == true ? Colors.red : Colors.white,
              ),
              onPressed: () => controller.onFavoriteButtonPressed(),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              Get.snackbar('Share', 'Share functionality coming soon!');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Container(
              height: 300.h,
              width: double.infinity,
              color: Colors.grey[100],
              child: _buildProductImage(),
            ),

            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Name
                  Text(
                    product.name ?? 'Product Name',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  // Price
                  Text(
                    '₹${(product.price ?? 0.0).toStringAsFixed(0)}',
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),

                  SizedBox(height: 12.h),

                  // Rating and Reviews
                  Row(
                    children: [
                      CustomRatingBar(
                        rating: product.rating ?? 0.0,
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '${product.rating ?? 0.0}',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '(${product.reviews ?? '0 reviews'})',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16.h),

                  // Size Selection
                  Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  GetBuilder<ProductDetailsController>(
                    id: 'Size',
                    builder: (controller) => Row(
                      children: ['XS', 'S', 'M', 'L', 'XL', 'XXL'].map((size) {
                        return Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: SizeItem(
                            label: size,
                            selected: controller.selectedSize == size,
                            onPressed: () => controller.changeSelectedSize(size),
                          ),
                        );
                      }).toList(),
                    ),
                  ),

                  SizedBox(height: 20.h),

                  // Product Attributes
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      children: [
                        _buildAttributeRow('Size', product.size ?? 'N/A'),
                        Divider(height: 16.h),
                        _buildAttributeRow('Weight', product.weight ?? 'N/A'),
                        Divider(height: 16.h),
                        _buildAttributeRow('Category', product.category ?? 'N/A'),
                        Divider(height: 16.h),
                        _buildAttributeRow('Subcategory', product.subcategory ?? 'N/A'),
                      ],
                    ),
                  ),

                  SizedBox(height: 20.h),

                  // Description
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),

                  SizedBox(height: 8.h),

                  Text(
                    product.description ?? 'No description available.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.grey[700],
                      height: 1.5,
                    ),
                  ),

                  SizedBox(height: 24.h),

                  // Delivery Info
                  Container(
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: Colors.blue[200]!),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_shipping,
                          color: Colors.blue[700],
                          size: 20.sp,
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Text(
                            'Free delivery within 3-5 business days. Cash on delivery available.',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.blue[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 24.h),

                  // Action Buttons
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Add to Cart',
                          onPressed: () => controller.onAddToCartPressed(),
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(width: 12.w),
                      Expanded(
                        child: CustomButton(
                          text: 'Buy Now',
                          onPressed: () => Get.toNamed('/buy-now', arguments: product),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAttributeRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.grey[600],
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }

  Widget _buildProductImage() {
    final imagePath = controller.product.image;
    if (imagePath == null || imagePath.isEmpty) {
      return Container(
        color: Colors.grey[200],
        child: Icon(
          Icons.image_not_supported,
          color: Colors.grey[400],
          size: 60.sp,
        ),
      );
    }

    return Image.asset(
      imagePath,
      fit: BoxFit.contain,
      width: double.infinity,
      height: double.infinity,
      errorBuilder: (context, error, stackTrace) {
        debugPrint('Product image load error for ${controller.product.name}: $error');
        debugPrint('Attempted path: $imagePath');
        return Container(
          color: Colors.grey[200],
          child: Icon(
            Icons.image_not_supported,
            color: Colors.grey[400],
            size: 60.sp,
          ),
        );
      },
    );
  }
}
