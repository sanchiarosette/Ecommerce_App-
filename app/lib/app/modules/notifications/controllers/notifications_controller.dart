import 'package:get/get.dart';

class NotificationsController extends GetxController {
  final List<Map<String, String>> notifications = [
    {
      'title': 'Your order has been shipped!',
      'subtitle': 'Your order #123456 has been shipped and is on its way.',
    },
    {
      'title': 'New promotion available',
      'subtitle': 'Get 20% off on all electronics this weekend.',
    },
    {
      'title': 'Password changed successfully',
      'subtitle': 'Your password has been updated.',
    },
    {
      'title': 'Welcome to E-commerce App!',
      'subtitle': 'We are glad to have you here. Happy shopping!',
    },
  ];
}
