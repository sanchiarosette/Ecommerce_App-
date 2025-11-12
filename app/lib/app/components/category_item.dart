import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback? onTap;
  final String heroTag;

  const CategoryItem({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 80.w,
        margin: EdgeInsets.only(right: 16.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: heroTag,
              child: Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF8B5FBF).withAlpha(25), // Light purple background
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Icon(
                  icon,
                  color: const Color(0xFF8B5FBF), // Light purple icon
                  size: 24.sp,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              height: 32.h,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
