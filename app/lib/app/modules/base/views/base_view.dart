import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/base_controller.dart';
import '../../cart/views/cart_view.dart';
import '../../favorites/views/favorites_view.dart';
import '../../home/views/home_view.dart';
import '../../settings/views/settings_view.dart';
import '../../../components/bottom_nav_bar.dart';

class BaseView extends GetView<BaseController> {
  const BaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseController>(
      builder: (_) => Scaffold(
        extendBody: true,
        body: SafeArea(
          bottom: false,
          child: IndexedStack(
            index: controller.currentIndex,
            children: const [
              HomeView(),
              FavoritesView(),
              CartView(),
              SettingsView()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(
          currentIndex: controller.currentIndex,
          onTap: controller.changeScreen,
        ),
      ),
    );
  }

}
