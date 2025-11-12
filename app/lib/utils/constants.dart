import 'package:flutter/material.dart';

class Constants {
  // colors
  static const Color purpleAccent = Color(0xFF7B61FF);

  // assets images
  static const logo = 'assets/images/app_icon.png';

  static const homeIcon = 'assets/vectors/home.svg';
  static const favoritesIcon = 'assets/vectors/favorites.svg';
  static const cartIcon = 'assets/vectors/cart.svg';
  static const notificationsIcon = 'assets/vectors/notifications.svg';
  static const settingsIcon = 'assets/vectors/settings.svg';

  static const favFilledIcon = 'assets/vectors/fav_filled.svg';
  static const favOutlinedIcon = 'assets/vectors/fav_outlined.svg';
  static const backArrowIcon = 'assets/vectors/back_arrow.svg';
  static const busIcon = 'assets/vectors/bus.svg';
  static const increaseIcon = 'assets/vectors/increase.svg';
  static const decreaseIcon = 'assets/vectors/decrease.svg';
  static const cancelIcon = 'assets/vectors/cancel.svg';
  static const forwardArrowIcon = 'assets/vectors/forward_arrow.svg';
  static const userIcon = 'assets/vectors/user.svg';
  static const themeIcon = 'assets/vectors/theme.svg';
  static const languageIcon = 'assets/vectors/language.svg';
  static const helpIcon = 'assets/vectors/help.svg';
  static const logoutIcon = 'assets/vectors/logout.svg';

  static const product1 = 'assets/images/product1.png';
  static const product2 = 'assets/images/product2.png';
  static const product3 = 'assets/images/product3.png';
  static const product4 = 'assets/images/product4.png';
  static const product5 = 'assets/images/product5.png';

  static const noData = 'assets/images/no_data.png';

  // Toys subcategories
  static const List<Map<String, dynamic>> toysSubcategories = [];

  // Categories data
  static List<Map<String, dynamic>> categories = [
    {
      'title': 'Fashion',
      'icon': Icons.shopping_bag,
      'heroTag': 'fashion_hero',
      'route': '/fashion',
      'subcategories': [
        {
          'title': 'Clothing',
          'icon': Icons.checkroom,
          'route': '/fashion/clothing'
        },
        {
          'title': 'Footwear',
          'icon': Icons.sports_soccer,
          'route': '/fashion/shoes'
        },
        {
          'title': 'Accessories',
          'icon': Icons.watch,
          'route': '/fashion/accessories'
        },
        {
          'title': 'Bags',
          'icon': Icons.shopping_bag,
          'route': '/fashion/bags'
        },
      ],
    },
    {
      'title': 'Babies',
      'icon': Icons.child_care,
      'heroTag': 'babies_hero',
      'route': '/babies',
      'subcategories': [
        {
          'title': 'Clothing',
          'icon': Icons.checkroom,
          'route': '/babies/clothing',
          'image': 'assets/images/babyfrock.jpg'
        },
        {'title': 'Toys', 'icon': Icons.toys, 'route': '/babies/toys'},
        {
          'title': 'Furniture',
          'icon': Icons.chair,
          'route': '/babies/furniture'
        },
        {
          'title': 'Diapers',
          'icon': Icons.baby_changing_station,
          'route': '/babies/diapers'
        },
      ],
    },
    {
      'title': 'Sports',
      'icon': Icons.sports_soccer,
      'heroTag': 'sports_hero',
      'route': '/sports',
      'subcategories': [
        {
          'title': 'Football',
          'icon': Icons.sports_soccer,
          'route': '/sports/football'
        },
        {
          'title': 'Tennis',
          'icon': Icons.sports_tennis,
          'route': '/sports/tennis'
        },
        {
          'title': 'Cricket',
          'icon': Icons.sports_cricket,
          'route': '/sports/cricket'
        },
      ],
    },
    {
      'title': 'Furniture',
      'icon': Icons.chair,
      'heroTag': 'furniture_hero',
      'route': '/furniture',
      'subcategories': [
        {
          'title': 'Living Room',
          'icon': Icons.weekend,
          'route': '/furniture/living-room'
        },
        {
          'title': 'Bedroom',
          'icon': Icons.king_bed,
          'route': '/furniture/bedroom'
        },
        {
          'title': 'Kitchen',
          'icon': Icons.kitchen,
          'route': '/furniture/kitchen'
        },
        {'title': 'Office', 'icon': Icons.desk, 'route': '/furniture/office'},
      ],
    },
    {
      'title': 'Electronics',
      'icon': Icons.devices,
      'heroTag': 'electronics_hero',
      'route': '/electronics',
      'subcategories': [
        {
          'title': 'Phones',
          'icon': Icons.phone_android,
          'route': '/electronics/phones'
        },
        {
          'title': 'Laptops',
          'icon': Icons.laptop,
          'route': '/electronics/laptops'
        },
        {
          'title': 'Accessories',
          'icon': Icons.headphones,
          'route': '/electronics/accessories'
        },
      ],
    },
  ];
}
