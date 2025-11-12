import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/dummy_helper.dart';
import '../../app/data/models/product_model.dart';
import 'popular_items_header.dart';
import 'favorite_icon.dart';

class PopularItemsSection extends StatelessWidget {
  const PopularItemsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get raw data and create completely independent ProductModel objects
    final rawData = DummyHelper.products.take(6).toList();
    final popularProducts = rawData.map((e) {
      // Create a completely new ProductModel instance with unique ID
      return ProductModel(
        id: DummyHelper.nextId,
        image: e.image,
        name: e.name,
        quantity: e.quantity,
        price: e.price,
        rating: e.rating,
        reviews: e.reviews,
        size: e.size,
        isFavorite: false, // Always start as not favorite
        weight: e.weight,
        description: e.description,
        category: e.category,
        subcategory: e.subcategory,
      );
    }).toList();

    return Column(
      children: [
        PopularItemsHeader(
          title: 'Popular Items',
          onSeeAllTap: () {
            // Navigate to all popular items
            Get.snackbar('Coming Soon', 'Popular items page coming soon!');
          },
        ),
        SizedBox(height: 16.h),
        SizedBox(
          height: 250.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            itemCount: popularProducts.length,
            itemBuilder: (context, index) {
              final product = popularProducts[index];
              return Container(
                width: 160.w,
                margin: EdgeInsets.only(right: 16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(12.r),
                              ),
                              image: DecorationImage(
                                image: AssetImage(product.image ?? 'assets/images/no_data.png'),
                                fit: BoxFit.cover,
                              ),
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
                      padding: EdgeInsets.all(12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.name ?? 'Product Name',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            '₹${product.price?.toStringAsFixed(0) ?? '0'}',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}