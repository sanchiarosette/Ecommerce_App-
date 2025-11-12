import 'package:get/get.dart';

import '../../../data/local/my_shared_pref.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();
    await Future.delayed(const Duration(milliseconds: 2000));

    // Check if user has seen onboarding
    bool hasSeenOnboarding = MySharedPref.getHasSeenOnboarding();

    if (hasSeenOnboarding) {
      Get.offAllNamed(Routes.login);
    } else {
      Get.offAllNamed(Routes.onboarding);
    }
  }
}
