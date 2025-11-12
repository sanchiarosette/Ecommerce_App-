import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/product_card.dart';
import '../controllers/trucks_controller.dart';

class TrucksView extends GetView<TrucksController> {
  const TrucksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trucks'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Obx(() {
          if (controller.trucks.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return SingleChildScrollView(
            padding: EdgeInsets.all(20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Trucks Collection',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height: 16.h),
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.h,
                    mainAxisExtent: 510.h,
                  ),
                  shrinkWrap: true,
                  primary: false,
                  itemCount: controller.trucks.length,
                  itemBuilder: (context, index) {
                    final product = controller.trucks[index];
                    return ProductCard(
                      product: product.toMap(),
                      onTap: () {
                        // Navigate to product details
                        Get.toNamed('/product-details',
                            arguments: product);
                      },
                      onFavoriteToggle: () => controller.toggleFavorite(index),
                    );
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
