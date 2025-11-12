import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/product_card.dart';
import '../controllers/babies_clothing_controller.dart';

class BabiesClothingView extends GetView<BabiesClothingController> {
  const BabiesClothingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Babies Clothing'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(() {
            if (controller.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            }

            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Babies Clothing Collection',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: 12.h),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.w,
                      mainAxisSpacing: 12.h,
                      mainAxisExtent: 510.h,
                    ),
                    itemCount: controller.babiesClothing.length,
                    itemBuilder: (context, index) {
                      final product = controller.babiesClothing[index];
                      return ProductCard(
                        product: product.toJson(),
                        onTap: () {
                          Get.toNamed('/product-details', arguments: product);
                        },
                        onFavoriteToggle: () =>
                            controller.toggleFavorite(index),
                        onAddToCart: () => controller.addToCart(product),
                      );
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
