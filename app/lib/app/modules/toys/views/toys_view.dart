import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/product_card.dart';
import '../controllers/toys_controller.dart';

class ToysView extends GetView<ToysController> {
  const ToysView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toys'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Subcategory Tabs
            SizedBox(
              height: 50.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.subcategories.length,
                itemBuilder: (context, index) {
                  final subcategory = controller.subcategories[index];
                  return GestureDetector(
                    onTap: () => controller.changeSubcategory(subcategory),
                    child: Obx(() => Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 8.h),
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                            color: controller.selectedSubcategory.value ==
                                    subcategory
                                ? Theme.of(context).primaryColor
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            subcategory,
                            style: TextStyle(
                              color: controller.selectedSubcategory.value ==
                                      subcategory
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )),
                  );
                },
              ),
            ),
            // Products Grid
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() => Text(
                            '${controller.selectedSubcategory.value} Collection',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          )),
                      SizedBox(height: 12.h),
                      Obx(() {
                        if (controller.isLoading.value) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        return GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12.w,
                            mainAxisSpacing: 12.h,
                            mainAxisExtent: 510.h,
                          ),
                          itemCount: controller.toys.length,
                          itemBuilder: (context, index) {
                            final product = controller.toys[index];
                            return ProductCard(
                              product: product.toJson(),
                              onTap: () {
                                Get.toNamed('/product-details',
                                    arguments: product);
                              },
                              onFavoriteToggle: () =>
                                  controller.toggleFavorite(index),
                              onAddToCart: () => controller.addToCart(product),
                            );
                          },
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
