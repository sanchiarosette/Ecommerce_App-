import 'package:get/get.dart';

import '../modules/accessories/bindings/accessories_binding.dart';
import '../modules/accessories/views/accessories_view.dart';
import '../modules/babies/bindings/babies_binding.dart';
import '../modules/babies/views/babies_view.dart';
import '../modules/babies_clothing/bindings/babies_clothing_binding.dart';
import '../modules/babies_clothing/views/babies_clothing_view.dart';
import '../modules/babies_furniture/bindings/babies_furniture_binding.dart';
import '../modules/babies_furniture/views/babies_furniture_view.dart';
import '../modules/bags/bindings/bags_binding.dart';
import '../modules/bags/views/bags_view.dart';
import '../modules/base/bindings/base_binding.dart';
import '../modules/base/views/base_view.dart';
import '../modules/bedroom/bindings/bedroom_binding.dart';
import '../modules/bedroom/views/bedroom_view.dart';
import '../modules/bikes/bindings/bikes_binding.dart';
import '../modules/bikes/views/bikes_view.dart';
import '../modules/cars/bindings/cars_binding.dart';
import '../modules/cars/views/cars_view.dart';
import '../modules/clothing/bindings/clothing_binding.dart';
import '../modules/clothing/views/clothing_view.dart';
import '../modules/cricket/bindings/cricket_binding.dart';
import '../modules/cricket/views/cricket_view.dart';
import '../modules/diapers/bindings/diapers_binding.dart';
import '../modules/diapers/views/diapers_view.dart';
import '../modules/electronics/bindings/electronics_binding.dart';
import '../modules/electronics/views/electronics_view.dart';
import '../modules/electronics_accessories/bindings/electronics_accessories_binding.dart';
import '../modules/electronics_accessories/views/electronics_accessories_view.dart';
import '../modules/fashion/bindings/fashion_binding.dart';
import '../modules/laptops/bindings/laptops_binding.dart';
import '../modules/laptops/views/laptops_view.dart';
import '../modules/phones/bindings/phones_binding.dart';
import '../modules/phones/views/phones_view.dart';
import '../modules/fashion/views/fashion_view.dart';
import '../modules/football/bindings/football_binding.dart';
import '../modules/football/views/football_view.dart';
import '../modules/furniture/bindings/furniture_binding.dart';
import '../modules/furniture/views/furniture_view.dart';
import '../modules/kitchen/bindings/kitchen_binding.dart';
import '../modules/kitchen/views/kitchen_view.dart';
import '../modules/living_room/bindings/living_room_binding.dart';
import '../modules/living_room/views/living_room_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/office/bindings/office_binding.dart';
import '../modules/office/views/office_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/parts/bindings/parts_binding.dart';
import '../modules/parts/views/parts_view.dart';
import '../modules/product_details/bindings/product_details_binding.dart';
import '../modules/product_details/views/product_details_view.dart';
import '../modules/shoes/bindings/shoes_binding.dart';
import '../modules/shoes/views/shoes_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/sports/bindings/sports_binding.dart';
import '../modules/sports/views/sports_view.dart';
import '../modules/tennis/bindings/tennis_binding.dart';
import '../modules/tennis/views/tennis_view.dart';
import '../modules/toys/bindings/toys_binding.dart';
import '../modules/toys/views/toys_view.dart';
import '../modules/trucks/bindings/trucks_binding.dart';
import '../modules/trucks/views/trucks_view.dart';
import '../modules/buy_now/bindings/buy_now_binding.dart';
import '../modules/buy_now/views/buy_now_view.dart';
import '../modules/buy_now/views/buy_now_address_view.dart';
import '../modules/buy_now/views/buy_now_payment_view.dart';
import '../modules/buy_now/views/buy_now_confirmation_view.dart';
import '../modules/buy_now/views/buy_now_success_view.dart';
// import '../modules/swimming/bindings/swimming_binding.dart';
// import '../modules/swimming/views/swimming_view.dart';
// import '../modules/tennis/bindings/tennis_binding.dart';
// import '../modules/tennis/views/tennis_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = [
    GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.onboarding,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.base,
      page: () => const BaseView(),
      binding: BaseBinding(),
    ),
    GetPage(
      name: _Paths.fashion,
      page: () => const FashionView(),
      binding: FashionBinding(),
    ),
    GetPage(
      name: _Paths.babies,
      page: () => const BabiesView(),
      binding: BabiesBinding(),
    ),
    GetPage(
      name: _Paths.sports,
      page: () => const SportsView(),
      binding: SportsBinding(),
    ),
    GetPage(
      name: _Paths.furniture,
      page: () => const FurnitureView(),
      binding: FurnitureBinding(),
    ),
    GetPage(
      name: _Paths.livingRoom,
      page: () => const LivingRoomView(),
      binding: LivingRoomBinding(),
    ),
    GetPage(
      name: _Paths.bedroom,
      page: () => const BedroomView(),
      binding: BedroomBinding(),
    ),
    GetPage(
      name: _Paths.kitchen,
      page: () => const KitchenView(),
      binding: KitchenBinding(),
    ),
    GetPage(
      name: _Paths.office,
      page: () => const OfficeView(),
      binding: OfficeBinding(),
    ),
    GetPage(
      name: _Paths.electronics,
      page: () => const ElectronicsView(),
      binding: ElectronicsBinding(),
    ),
    GetPage(
      name: _Paths.phones,
      page: () => const PhonesView(),
      binding: PhonesBinding(),
    ),
    GetPage(
      name: _Paths.laptops,
      page: () => const LaptopsView(),
      binding: LaptopsBinding(),
    ),
    GetPage(
      name: _Paths.electronicsAccessories,
      page: () => const ElectronicsAccessoriesView(),
      binding: ElectronicsAccessoriesBinding(),
    ),
    GetPage(
      name: _Paths.toys,
      page: () => const ToysView(),
      binding: ToysBinding(),
    ),
    GetPage(
      name: _Paths.clothing,
      page: () => const ClothingView(),
      binding: ClothingBinding(),
    ),
    GetPage(
      name: _Paths.shoes,
      page: () => const ShoesView(),
      binding: ShoesBinding(),
    ),
    GetPage(
      name: _Paths.accessories,
      page: () => const AccessoriesView(),
      binding: AccessoriesBinding(),
    ),
    GetPage(
      name: _Paths.bags,
      page: () => const BagsView(),
      binding: BagsBinding(),
    ),
    GetPage(
      name: _Paths.babiesClothing,
      page: () => const BabiesClothingView(),
      binding: BabiesClothingBinding(),
    ),
    GetPage(
      name: _Paths.toys,
      page: () => const ToysView(),
      binding: ToysBinding(),
    ),
    GetPage(
      name: _Paths.babiesFurniture,
      page: () => const BabiesFurnitureView(),
      binding: BabiesFurnitureBinding(),
    ),
    GetPage(
      name: _Paths.diapers,
      page: () => const DiapersView(),
      binding: DiapersBinding(),
    ),
    GetPage(
      name: _Paths.football,
      page: () => const FootballView(),
      binding: FootballBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.cricket,
      page: () => const CricketView(),
      binding: CricketBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.tennis,
      page: () => const TennisView(),
      binding: TennisBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.productDetails,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
    GetPage(
      name: _Paths.buyNow,
      page: () => const BuyNowView(),
      binding: BuyNowBinding(),
    ),
    GetPage(
      name: _Paths.buyNowAddress,
      page: () => const BuyNowAddressView(),
      binding: BuyNowBinding(),
    ),
    GetPage(
      name: _Paths.buyNowPayment,
      page: () => const BuyNowPaymentView(),
      binding: BuyNowBinding(),
    ),
    GetPage(
      name: _Paths.buyNowConfirmation,
      page: () => const BuyNowConfirmationView(),
      binding: BuyNowBinding(),
    ),
    GetPage(
      name: _Paths.buyNowSuccess,
      page: () => const BuyNowSuccessView(),
    ),
    GetPage(
      name: _Paths.cars,
      page: () => const CarsView(),
      binding: CarsBinding(),
    ),
    GetPage(
      name: _Paths.bikes,
      page: () => const BikesView(),
      binding: BikesBinding(),
    ),
    GetPage(
      name: _Paths.trucks,
      page: () => const TrucksView(),
      binding: TrucksBinding(),
    ),
    GetPage(
      name: _Paths.parts,
      page: () => const PartsView(),
      binding: PartsBinding(),
    ),
  ];
}
