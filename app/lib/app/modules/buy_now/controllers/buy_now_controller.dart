import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../data/models/product_model.dart';

class BuyNowController extends GetxController {
  // Razorpay instance
  late Razorpay _razorpay;

  // Cart items from cart page
  final RxList<Map<String, dynamic>> cartItems = <Map<String, dynamic>>[].obs;

  // Selected product for buy now
  final Rx<ProductModel?> selectedProduct = Rx<ProductModel?>(null);

  // Quantity selection
  final RxInt quantity = 1.obs;

  // Selected address
  final RxString selectedAddress = ''.obs;

  // Selected payment method
  final RxString selectedPaymentMethod = ''.obs;

  // New address input
  final RxString newAddress = ''.obs;

  // Loading states
  final RxBool isProcessingPayment = false.obs;

  // Sample addresses (in real app, this would come from user profile)
  final RxList<String> savedAddresses = <String>[].obs;

  // Sample payment methods
  final RxList<String> paymentMethods = <String>[
    'Credit Card **** 1234',
    'PayPal account',
    'Cash on Delivery',
  ].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize Razorpay
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);

    // Get the product passed as argument
    final args = Get.arguments;
    if (args != null && args is ProductModel) {
      selectedProduct.value = args;
    } else if (args != null && args is List<Map<String, dynamic>>) {
      // Handle cart items from cart page
      cartItems.assignAll(args);
      // For simplicity, use the first item as selected product
      if (cartItems.isNotEmpty) {
        selectedProduct.value = cartItems.first['product'];
        quantity.value = cartItems.first['quantity'];
      }
    }
  }

  @override
  void onClose() {
    super.onClose();
    _razorpay.clear();
  }

  void setQuantity(int newQuantity) {
    if (newQuantity > 0 && newQuantity <= 10) {
      quantity.value = newQuantity;
    }
  }

  void selectAddress(String address) {
    selectedAddress.value = address;
  }

  void selectPaymentMethod(String method) {
    selectedPaymentMethod.value = method;
  }

  // Add new address
  void addNewAddress() {
    if (newAddress.value.trim().isNotEmpty) {
      savedAddresses.add(newAddress.value.trim());
      newAddress.value = '';
      Get.snackbar('Success', 'Address added successfully');
    } else {
      Get.snackbar('Error', 'Please enter a valid address');
    }
  }

  double get subtotal =>
      ((selectedProduct.value?.price ?? 0) * quantity.value).toDouble();
  double get shipping => subtotal > 50 ? 0 : 5.99;
  double get tax => subtotal * 0.08;
  double get total => subtotal + shipping + tax;

  void goToAddressSelection() {
    Get.toNamed('/buy-now-address');
  }

  void goToPaymentSelection() {
    Get.toNamed('/buy-now-payment');
  }

  void goToOrderConfirmation() {
    Get.toNamed('/buy-now-confirmation');
  }

  // Razorpay payment handlers
  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Create order
    final orderId = 'ORD${DateTime.now().millisecondsSinceEpoch}';

    // Show success popup
    Get.dialog(
      AlertDialog(
        title: const Text('Order Placed Successfully!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order ID: $orderId'),
            const SizedBox(height: 8),
            Text('Payment ID: ${response.paymentId}'),
            const SizedBox(height: 8),
            Text('Amount: ₹${total.toStringAsFixed(2)}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); // Close dialog
              // Navigate directly to base page (home tab)
              Get.offAllNamed('/base');
            },
            child: const Text('OK'),
          ),
        ],
      ),
      barrierDismissible: false,
    );

    isProcessingPayment.value = false;
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    Get.snackbar('Payment Failed', 'Error: ${response.message}');
    isProcessingPayment.value = false;
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    Get.snackbar(
        'External Wallet', 'External wallet selected: ${response.walletName}');
  }

  // Updated processPayment method to show success immediately
  Future<void> processPayment() async {
    if (selectedAddress.isEmpty || selectedPaymentMethod.isEmpty) {
      Get.snackbar('Error', 'Please select address and payment method');
      return;
    }

    // Create order ID
    final orderId = 'ORD${DateTime.now().millisecondsSinceEpoch}';

    // Show success popup immediately
    Get.dialog(
      AlertDialog(
        title: const Text('Order Placed Successfully!'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Order ID: $orderId'),
            const SizedBox(height: 8),
            Text('Payment Method: ${selectedPaymentMethod.value}'),
            const SizedBox(height: 8),
            Text('Amount: ₹${total.toStringAsFixed(2)}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back(); // Close dialog
              // Navigate directly to base page (home tab)
              Get.offAllNamed('/base');
            },
            child: const Text('OK'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
