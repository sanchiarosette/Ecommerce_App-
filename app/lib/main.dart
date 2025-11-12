import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:logging/logging.dart';

import 'app/data/local/my_shared_pref.dart';
import 'app/routes/app_pages.dart';
import 'config/theme/my_theme.dart';

// Import all controllers
import 'app/modules/base/controllers/base_controller.dart';
import 'app/modules/home/controllers/home_controller.dart';
import 'app/modules/favorites/controllers/favorites_controller.dart';
import 'app/modules/cart/controllers/cart_controller.dart';
import 'app/modules/notifications/controllers/notifications_controller.dart';
import 'app/modules/settings/controllers/settings_controller.dart';
import 'app/modules/phones/controllers/phones_controller.dart';
import 'app/modules/laptops/controllers/laptops_controller.dart';
import 'app/modules/electronics_accessories/controllers/electronics_accessories_controller.dart';
import 'app/modules/cars/controllers/cars_controller.dart';
import 'app/modules/bikes/controllers/bikes_controller.dart';
import 'app/modules/trucks/controllers/trucks_controller.dart';
import 'app/modules/parts/controllers/parts_controller.dart';
import 'app/modules/clothing/controllers/clothing_controller.dart';
import 'app/modules/shoes/controllers/shoes_controller.dart';
import 'app/modules/accessories/controllers/accessories_controller.dart';
import 'app/modules/bags/controllers/bags_controller.dart';
import 'app/modules/babies_clothing/controllers/babies_clothing_controller.dart';
import 'app/modules/toys/controllers/toys_controller.dart';
import 'app/modules/babies_furniture/controllers/babies_furniture_controller.dart';
import 'app/modules/diapers/controllers/diapers_controller.dart';
import 'app/modules/living_room/controllers/living_room_controller.dart';
import 'app/modules/bedroom/controllers/bedroom_controller.dart';
import 'app/modules/kitchen/controllers/kitchen_controller.dart';
import 'app/modules/office/controllers/office_controller.dart';
import 'app/modules/fashion/controllers/fashion_controller.dart';
import 'app/modules/babies/controllers/babies_controller.dart';
import 'app/modules/sports/controllers/sports_controller.dart';
import 'app/modules/furniture/controllers/furniture_controller.dart';
import 'app/modules/electronics/controllers/electronics_controller.dart';
import 'app/modules/cricket/controllers/cricket_controller.dart';
import 'app/modules/cricket/controllers/cricket_favorites_controller.dart';
import 'app/modules/football/controllers/football_controller.dart';
import 'app/modules/tennis/controllers/tennis_controller.dart';

Future<void> main() async {
  // wait for bindings
  WidgetsFlutterBinding.ensureInitialized();

  // init logging
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    // Using logger instead of print for production code
    // Logger(record.loggerName).log(record.level, '${record.time}: ${record.message}');
  });

  // init shared preference
  await MySharedPref.init();

  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, widget) {
        return GetMaterialApp(
          title: "E-commerce App",
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            bool themeIsLight = MySharedPref.getThemeIsLight();
            return Theme(
              data: MyTheme.getThemeData(isLight: themeIsLight),
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1.0)),
                child: widget!,
              ),
            );
          },
          initialRoute:
              AppPages.initial, // first screen to show when app is running
          getPages: AppPages.routes, // app screens
          // Initialize all controllers globally
          initialBinding: BindingsBuilder(() {
            // Core controllers
            Get.put(BaseController());
            Get.put(HomeController());
            Get.put(FavoritesController());
            Get.put(CartController());
            Get.put(NotificationsController());
            Get.put(SettingsController());

            // Electronics controllers
            Get.put(PhonesController());
            Get.put(LaptopsController());
            Get.put(ElectronicsAccessoriesController());

            // Vehicle controllers
            Get.put(CarsController());
            Get.put(BikesController());
            Get.put(TrucksController());
            Get.put(PartsController());

            // Fashion controllers
            Get.put(ClothingController());
            Get.put(ShoesController());
            Get.put(AccessoriesController());
            Get.put(BagsController());

            // Babies controllers
            Get.put(BabiesClothingController());
            Get.put(ToysController());
            Get.put(BabiesFurnitureController());
            Get.put(DiapersController());

            // Furniture controllers
            Get.put(LivingRoomController());
            Get.put(BedroomController());
            Get.put(KitchenController());
            Get.put(OfficeController());

            // Other controllers
            Get.put(FashionController());
            Get.put(BabiesController());
            Get.put(SportsController());
            Get.put(FurnitureController());
            Get.put(ElectronicsController());

            // Sports controllers
            Get.put(CricketFavoritesController());
            Get.put(CricketController());
            Get.put(FootballController());
            Get.put(TennisController());
          }),
        );
      },
    ),
  );
}
