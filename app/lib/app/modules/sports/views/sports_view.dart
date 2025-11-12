import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/category_grid.dart';
import '../../../../utils/constants.dart' as constants;
import '../../../routes/app_pages.dart';
import '../controllers/sports_controller.dart';

class SportsView extends GetView<SportsController> {
  const SportsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = constants.Constants.categories
        .firstWhere((cat) => cat['title'] == 'Sports');
    final subcategories =
        category['subcategories'] as List<Map<String, dynamic>>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sports'),
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
                title: 'Sports Categories',
                subcategories: subcategories,
                onSubcategoryTap: (route) {
                  if (route == '/sports/football') {
                    Get.toNamed(Routes.football);
                  } else if (route == '/sports/tennis') {
                    Get.toNamed(Routes.tennis);
                  } else if (route == '/sports/cricket') {
                    Get.toNamed(Routes.cricket);
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
