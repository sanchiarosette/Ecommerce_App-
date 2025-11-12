import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingPage extends StatelessWidget {
  final String backgroundImage;
  final String headline;
  final String bodyText;
  final int index;

  const OnboardingPage({
    Key? key,
    required this.backgroundImage,
    required this.headline,
    required this.bodyText,
    required this.index,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          // Main content
          Expanded(
            child: Column(
              children: [
                // Large illustration at center top
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Image.asset(
                      backgroundImage,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) => Icon(
                        Icons.image,
                        size: 150.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                // Main headline split into lines - reduced font size
                Text(
                  headline,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.3,
                    letterSpacing: 0.3,
                  ),
                ),
                SizedBox(height: 16.h),
                // Descriptive text in multiple lines - reduced font size
                Text(
                  bodyText,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    color: Colors.grey[600],
                    height: 1.4,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.2,
                  ),
                ),
                // Spacer to push content up and leave room for bottom navigation
                SizedBox(height: 80.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
