import 'package:get/get.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorites/controllers/favorites_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../notifications/controllers/notifications_controller.dart';
import '../../settings/controllers/settings_controller.dart';
import '../../phones/controllers/phones_controller.dart';
import '../../laptops/controllers/laptops_controller.dart';
import '../../electronics_accessories/controllers/electronics_accessories_controller.dart';
import '../../cars/controllers/cars_controller.dart';
import '../../bikes/controllers/bikes_controller.dart';
import '../../trucks/controllers/trucks_controller.dart';
import '../../parts/controllers/parts_controller.dart';
import '../../clothing/controllers/clothing_controller.dart';
import '../../shoes/controllers/shoes_controller.dart';
import '../../accessories/controllers/accessories_controller.dart';
import '../../bags/controllers/bags_controller.dart';
import '../../babies_clothing/controllers/babies_clothing_controller.dart';
import '../../toys/controllers/toys_controller.dart';
import '../../babies_furniture/controllers/babies_furniture_controller.dart';
import '../../diapers/controllers/diapers_controller.dart';
import '../../living_room/controllers/living_room_controller.dart';
import '../../bedroom/controllers/bedroom_controller.dart';
import '../../kitchen/controllers/kitchen_controller.dart';
import '../../office/controllers/office_controller.dart';
import '../../fashion/controllers/fashion_controller.dart';
import '../../babies/controllers/babies_controller.dart';
import '../../sports/controllers/sports_controller.dart';
import '../../furniture/controllers/furniture_controller.dart';
import '../../electronics/controllers/electronics_controller.dart';
import '../../cricket/controllers/cricket_controller.dart';
import '../../football/controllers/football_controller.dart';
import '../../tennis/controllers/tennis_controller.dart';
import '../controllers/base_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(() => BaseController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<FavoritesController>(() => FavoritesController());
    Get.lazyPut<CartController>(() => CartController());
    Get.lazyPut<NotificationsController>(() => NotificationsController());
    Get.lazyPut<SettingsController>(() => SettingsController());
    // Electronics subcategories
    Get.lazyPut<PhonesController>(() => PhonesController());
    Get.lazyPut<LaptopsController>(() => LaptopsController());
    Get.lazyPut<ElectronicsAccessoriesController>(
        () => ElectronicsAccessoriesController());
    // Vehicle subcategories
    Get.lazyPut<CarsController>(() => CarsController());
    Get.lazyPut<BikesController>(() => BikesController());
    Get.lazyPut<TrucksController>(() => TrucksController());
    Get.lazyPut<PartsController>(() => PartsController());
    // Fashion subcategories
    Get.lazyPut<ClothingController>(() => ClothingController());
    Get.lazyPut<ShoesController>(() => ShoesController());
    Get.lazyPut<AccessoriesController>(() => AccessoriesController());
    Get.lazyPut<BagsController>(() => BagsController());
    // Babies subcategories
    Get.lazyPut<BabiesClothingController>(() => BabiesClothingController());
    Get.lazyPut<ToysController>(() => ToysController());
    Get.lazyPut<BabiesFurnitureController>(() => BabiesFurnitureController());
    Get.lazyPut<DiapersController>(() => DiapersController());
    // Furniture subcategories
    Get.lazyPut<LivingRoomController>(() => LivingRoomController());
    Get.lazyPut<BedroomController>(() => BedroomController());
    Get.lazyPut<KitchenController>(() => KitchenController());
    Get.lazyPut<OfficeController>(() => OfficeController());
    // Other categories
    Get.lazyPut<FashionController>(() => FashionController());
    Get.lazyPut<BabiesController>(() => BabiesController());
    Get.lazyPut<SportsController>(() => SportsController());
    Get.lazyPut<FurnitureController>(() => FurnitureController());
    Get.lazyPut<ElectronicsController>(() => ElectronicsController());
    // Sports subcategories
    Get.lazyPut<CricketController>(() => CricketController());
    Get.lazyPut<FootballController>(() => FootballController());
    Get.lazyPut<TennisController>(() => TennisController());
  }
}
