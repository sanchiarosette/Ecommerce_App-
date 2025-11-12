import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/category_grid.dart';
import '../../../../utils/constants.dart' as constants;
import '../../../routes/app_pages.dart';
import '../controllers/vehicle_controller.dart';

class VehicleView extends GetView<VehicleController> {
  const VehicleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = constants.Constants.categories
        .firstWhere((cat) => cat['title'] == 'Vehicle');
    final subcategories =
        category['subcategories'] as List<Map<String, dynamic>>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicles'),
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
                      color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
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
                title: 'Vehicle Categories',
                subcategories: subcategories,
                onSubcategoryTap: (route) {
                  if (route == '/vehicle/cars') {
                    Get.toNamed(Routes.cars);
                  } else if (route == '/vehicle/bikes') {
                    Get.toNamed(Routes.bikes);
                  } else if (route == '/vehicle/trucks') {
                    Get.toNamed(Routes.trucks);
                  } else if (route == '/vehicle/parts') {
                    Get.toNamed(Routes.parts);
                  } else {
                    Get.snackbar(
                      'Coming Soon',
                      'This subcategory is coming soon!',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
