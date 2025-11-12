import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/category_grid.dart';
import '../../../../utils/constants.dart' as constants;
import '../../../routes/app_pages.dart';
import '../controllers/electronics_controller.dart';

class ElectronicsView extends GetView<ElectronicsController> {
  const ElectronicsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = constants.Constants.categories
        .firstWhere((cat) => cat['title'] == 'Electronics');
    final subcategories =
        category['subcategories'] as List<Map<String, dynamic>>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Electronics'),
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
                  tag: category['heroTag'],
                  child: Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withAlpha(25),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Icon(
                      category['icon'],
                      color: Theme.of(context).primaryColor,
                      size: 50.sp,
                    ),
                  ),
                ),
              ),

              // Subcategories Grid
              CategoryGrid(
                title: 'Electronics Categories',
                subcategories: subcategories,
                onSubcategoryTap: (route) {
                  if (route == '/electronics/phones') {
                    Get.toNamed(Routes.phones);
                  } else if (route == '/electronics/laptops') {
                    Get.toNamed(Routes.laptops);
                  } else if (route == '/electronics/accessories') {
                    Get.toNamed(Routes.electronicsAccessories);
                  } else {
                    Get.snackbar(
                      'Coming Soon',
                      'This subcategory is coming soon!',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
