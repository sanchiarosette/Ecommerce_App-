import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            'Buyzy',
            style: GoogleFonts.inter(
              fontSize: 32.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ).animate().fade().slideY(
            duration: const Duration(milliseconds: 500),
            begin: 1,
            curve: Curves.easeInSine
          ),
        ),
      ),
    );
  }
}