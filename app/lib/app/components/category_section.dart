import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_item.dart';

class CategorySection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> categories;

  const CategorySection({
    Key? key,
    required this.title,
    required this.categories,
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
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  letterSpacing: 0.3,
                  height: 1.3,
                ),
          ),
        ),
        SizedBox(height: 16.h),
        Container(
          height: 105.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return CategoryItem(
                title: category['title'],
                icon: category['icon'],
                onTap: category['onTap'],
                heroTag: category['heroTag'],
              );
            },
          ),
        ),
      ],
    );
  }
}
