import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularItemsHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAllTap;

  const PopularItemsHeader({
    Key? key,
    required this.title,
    this.onSeeAllTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  letterSpacing: 0.3,
                  height: 1.3,
                ),
          ),
          TextButton(
            onPressed: onSeeAllTap,
            child: Text(
              'See All',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    letterSpacing: 0.2,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
