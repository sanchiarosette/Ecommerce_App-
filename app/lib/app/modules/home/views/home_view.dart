import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import '../../../components/category_section.dart';
import '../../../components/popular_items_header.dart';
import '../../../components/product_item.dart';
import '../../../../components/promotional_banner.dart';
import '../../../../utils/constants.dart' as constants;
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buyzy'),
        elevation: 0,
        backgroundColor: const Color(0xFF8B5FBF), // Light purple
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Padding(
                padding: EdgeInsets.all(20.w),
                child: TextField(
                  onChanged: (value) => controller.searchProducts(value),
                  decoration: InputDecoration(
                    hintText: 'Search products...',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: Icon(Icons.location_on,
                        color: Theme.of(context).iconTheme.color),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(color: Color(0xFF8B5FBF)), // Light purple
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),

              // Categories Section
              CategorySection(
                title: 'Categories',
                categories: constants.Constants.categories
                    .where((category) => category['title'] != 'Toys')
                    .map((category) {
                  return {
                    'title': category['title'],
                    'icon': category['icon'],
                    'heroTag': category['heroTag'],
                    'onTap': () => Get.toNamed(category['route']),
                  };
                }).toList(),
              ),

              const SizedBox(height: 24),

              // Promotional Banner
              const PromotionalBanner(),

              const SizedBox(height: 24),

              // Popular Items Header
              PopularItemsHeader(
                title: 'Popular Items',
                onSeeAllTap: () {
                  // Handle see all tap
                },
              ),

              const SizedBox(height: 16),

              // Popular Items Grid
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Obx(() => GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15.w,
                        mainAxisSpacing: 15.h,
                        mainAxisExtent:
                            400.h, // Increased height to prevent overflow
                      ),
                      shrinkWrap: true,
                      primary: false,
                      itemCount: controller.filteredProducts.length,
                      itemBuilder: (context, index) => ProductItem(
                        product: controller.filteredProducts[index],
                      ),
                    )),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
