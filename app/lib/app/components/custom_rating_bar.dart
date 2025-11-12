import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating;
  final double itemSize;

  const CustomRatingBar({
    Key? key,
    required this.rating,
    this.itemSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return Icon(
            Icons.star,
            color: Colors.amber,
            size: itemSize.w,
          );
        } else if (index < rating && rating % 1 != 0) {
          return Icon(
            Icons.star_half,
            color: Colors.amber,
            size: itemSize.w,
          );
        } else {
          return Icon(
            Icons.star_border,
            color: Colors.amber,
            size: itemSize.w,
          );
        }
      }),
    );
  }
}
