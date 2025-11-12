import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryGrid extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> subcategories;
  final Function(String) onSubcategoryTap;

  const CategoryGrid({
    Key? key,
    required this.title,
    required this.subcategories,
    required this.onSubcategoryTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        SizedBox(height: 16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.w,
              mainAxisSpacing: 15.h,
              mainAxisExtent: 140.h,
            ),
            shrinkWrap: true,
            primary: false,
            itemCount: subcategories.length,
            itemBuilder: (context, index) {
              final subcategory = subcategories[index];
              return GestureDetector(
                onTap: () {
                  final route = subcategory['route'];
                  if (route != null) {
                    Get.toNamed(route);
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      height: 140.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: const Color(0xFF8B5FBF).withValues(alpha: 0.1), // Light purple background
                        border: Border.all(
                          color: const Color(0xFF8B5FBF).withValues(alpha: 0.3), // Light purple border
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF8B5FBF).withValues(alpha: 0.2), // Light purple shadow
                            blurRadius: 12,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              subcategory['icon'],
                              color: const Color(0xFF8B5FBF), // Light purple icon
                              size: 32.sp,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              subcategory['title'],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xFF8B5FBF), // Light purple text
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
