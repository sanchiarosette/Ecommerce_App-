import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/constants.dart';
import '../../../routes/app_pages.dart' as routes;
import '../controllers/phones_controller.dart';

class PhonesView extends GetView<PhonesController> {
  const PhonesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phones'),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero Section
              Container(
                height: 200.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColor.withValues(alpha: 0.7),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Hero(
                        tag: 'phones-hero',
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .primaryColor
                                .withValues(alpha: 0.1),
                          ),
                          child: Icon(
                            Icons.phone_android,
                            size: 80.sp,
                            color: Colors.white.withValues(alpha: 0.3),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_android,
                            size: 60.sp,
                            color: Colors.white,
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            'Smartphones',
                            style: TextStyle(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'Latest mobile technology',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.white.withValues(alpha: 0.9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24.h),

              // Products Section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Phone Collection',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),

              SizedBox(height: 16.h),

              Obx(() {
                if (controller.products.isEmpty) {
                  return Center(
                    child: Padding(
                      padding: EdgeInsets.all(40.w),
                      child: Column(
                        children: [
                          Icon(
                            Icons.phone_android,
                            size: 64.sp,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            'No phones available',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }

                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15.w,
                      mainAxisSpacing: 15.h,
                      mainAxisExtent: 510.h,
                    ),
                    shrinkWrap: true,
                    primary: false,
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Get.toNamed(
                        routes.Routes.productDetails,
                        arguments: controller.products[index],
                      ),
                      child: Container(
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
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(12.r)),
                                  image: DecorationImage(
                                    image: AssetImage(controller.products[index]
                                            .image ??
                                        Constants.product1),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(12.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.products[index].name ?? 'Product Name',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    '₹${controller.products[index].price?.toStringAsFixed(0) ?? '0'}',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor,
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
              }),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
