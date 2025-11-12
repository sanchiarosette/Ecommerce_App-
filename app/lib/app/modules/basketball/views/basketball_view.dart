import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/product_item.dart';
import '../../../../utils/dummy_helper.dart';
import '../controllers/basketball_controller.dart';

class BasketballView extends GetView<BasketballController> {
  const BasketballView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = DummyHelper.getBasketball();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Basketball'),
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
          child: Column(
            children: [
              // Hero Icon at the top
              Padding(
                padding: EdgeInsets.all(20.w),
                child: Hero(
                  tag: 'basketball',
                  child: Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Icon(
                      Icons.sports_basketball,
                      color: Theme.of(context).primaryColor,
                      size: 50.sp,
                    ),
                  ),
                ),
              ),

              // Products Grid
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.h,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductItem(product: product);
                  },
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
