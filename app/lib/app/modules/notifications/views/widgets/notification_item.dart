import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants.dart';

class NotificationItem extends StatelessWidget {
  final Map<String, String> notification;
  const NotificationItem({
    Key? key,
    required this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      padding: EdgeInsets.all(15.w),
      margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 20.w),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.05 * 255).round()),
            blurRadius: 10,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10.r),
            decoration: BoxDecoration(
              color: theme.primaryColor.withAlpha(25),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              Constants.notificationsIcon,
              colorFilter:
                  ColorFilter.mode(theme.primaryColor, BlendMode.srcIn),
              width: 24.w,
            ),
          ),
          SizedBox(width: 15.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notification['title']!, style: theme.textTheme.bodyLarge),
                SizedBox(height: 5.h),
                Text(notification['subtitle']!,
                    style: theme.textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
