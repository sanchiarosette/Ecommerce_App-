import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/local/my_shared_pref.dart';
import '../../../routes/app_pages.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentPage = 0.obs;

  final List<Map<String, String>> onboardingData = [
    {
      'backgroundImage': 'assets/images/Illustration-0.png',
      'headline': 'Find the item you\'ve been looking for',
      'bodyText': 'Here you\'ll see rich varieties of goods, carefully classified for seamless browsing experience.',
    },
    {
      'backgroundImage': 'assets/images/Illustration-1.png',
      'headline': 'Get those shopping bags filled',
      'bodyText': 'Add any item you want to your cart, or save it on your wishlist, so you don\'t miss it in your future purchases.',
    },
    {
      'backgroundImage': 'assets/images/Illustration-2.png',
      'headline': 'Find the item you\'ve been looking for',
      'bodyText': 'Here you\'ll see rich varieties of goods, carefully classified for seamless browsing experience.',
    },
    {
      'backgroundImage': 'assets/images/Illustration-3.png',
      'headline': 'Package tracking',
      'bodyText': 'In particular, Shoplon can pack your orders, and help you seamlessly manage your shipments.',
    },
    {
      'backgroundImage': 'assets/images/Illustration-4.png',
      'headline': 'Find the item you\'ve been looking for',
      'bodyText': 'Here you\'ll see rich varieties of goods, carefully classified for seamless browsing experience.',
    },
  ];

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      skipOnboarding();
    }
  }

  void skipOnboarding() async {
    await MySharedPref.setHasSeenOnboarding(true);
    Get.offAllNamed(Routes.login);
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
