import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/onboarding_controller.dart';
import '../widgets/onboarding_page.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              itemCount: controller.onboardingData.length,
              itemBuilder: (context, index) {
                final data = controller.onboardingData[index];
                return OnboardingPage(
                  backgroundImage: data['backgroundImage'] ?? 'assets/images/Illustration-0.png',
                  headline: data['headline'] ?? 'Find the item you\'ve been looking for',
                  bodyText: data['bodyText'] ?? 'Here you\'ll see rich varieties of goods, carefully classified for seamless browsing experience.',
                  index: index,
                );
              },
            ),
            // Skip button
            Positioned(
              top: 20.h,
              right: 20.w,
              child: TextButton(
                onPressed: controller.skipOnboarding,
                child: Text(
                  'Skip',
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // Page indicator dots centered at bottom
            Positioned(
              bottom: 20.h,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: controller.pageController,
                  count: controller.onboardingData.length,
                  effect: ScaleEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.grey.shade300,
                    dotHeight: 8.h,
                    dotWidth: 8.w,
                    scale: 1.2,
                    spacing: 12.w,
                  ),
                ),
              ),
            ),
            // Small navigation arrow positioned at bottom right (only show on slides 1-4)
            Positioned(
              bottom: 20.h,
              right: 24.w,
              child: Obx(() => controller.currentPage.value < controller.onboardingData.length - 1
                  ? IconButton(
                      onPressed: () => controller.pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      ),
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20.sp,
                      ),
                    )
                  : controller.currentPage.value == controller.onboardingData.length - 1
                      ? IconButton(
                          onPressed: () => controller.skipOnboarding(),
                          icon: Icon(
                            Icons.check,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                        )
                      : const SizedBox()), // Show check icon on last slide to navigate to login
            ),
          ],
        ),
      ),
    );
  }
}
