import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/custom_button.dart';
import '../../../components/screen_title.dart';
import '../controllers/buy_now_controller.dart';

class BuyNowConfirmationView extends GetView<BuyNowController> {
  const BuyNowConfirmationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Confirmation'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Obx(() {
            final product = controller.selectedProduct.value;
            if (product == null) {
              return const Center(child: Text('No product selected'));
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ScreenTitle(
                  title: 'Review Your Order',
                  dividerEndIndent: 120,
                ),
                20.verticalSpace,

                // Product Details
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Product Details',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      12.verticalSpace,
                      Row(
                        children: [
                          Container(
                            width: 60.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              image: DecorationImage(
                                image: AssetImage(product.image!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          12.horizontalSpace,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name!,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                4.verticalSpace,
                                Text(
                                  'Quantity: ${controller.quantity.value}',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₹${product.price}',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                20.verticalSpace,

                // Delivery Address
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Address',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: controller.goToAddressSelection,
                            child: Text(
                              'Change',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      8.verticalSpace,
                      Text(
                        controller.selectedAddress.value,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),

                20.verticalSpace,

                // Payment Method
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Payment Method',
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: controller.goToPaymentSelection,
                            child: Text(
                              'Change',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      8.verticalSpace,
                      Row(
                        children: [
                          Icon(
                            controller.selectedPaymentMethod.value.contains('Credit Card')
                                ? Icons.credit_card
                                : controller.selectedPaymentMethod.value.contains('PayPal')
                                    ? Icons.account_balance_wallet
                                    : Icons.local_shipping,
                            color: Theme.of(context).primaryColor,
                          ),
                          8.horizontalSpace,
                          Text(
                            controller.selectedPaymentMethod.value,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                20.verticalSpace,

                // Order Summary
                Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Order Summary',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      12.verticalSpace,
                      _buildPriceRow('Subtotal', '₹${controller.subtotal.toStringAsFixed(2)}'),
                      _buildPriceRow('Shipping', controller.shipping == 0 ? 'FREE' : '₹${controller.shipping.toStringAsFixed(2)}'),
                      _buildPriceRow('Tax', '₹${controller.tax.toStringAsFixed(2)}'),
                      const Divider(),
                      _buildPriceRow('Total', '₹${controller.total.toStringAsFixed(2)}', isTotal: true),
                    ],
                  ),
                ),

                const Spacer(),

                // Place Order Button
                Obx(() => CustomButton(
                  text: controller.isProcessingPayment.value ? 'Processing...' : 'Place Order',
                  onPressed: controller.isProcessingPayment.value ? null : controller.processPayment,
                  fontSize: 16.sp,
                  radius: 12.r,
                  verticalPadding: 16.h,
                  hasShadow: true,
                  shadowColor: Theme.of(context).primaryColor,
                  shadowOpacity: 0.3,
                  shadowBlurRadius: 4,
                  shadowSpreadRadius: 0,
                )),
              ],
            );
          }),
        ),
      ),
    );
  }

  Widget _buildPriceRow(String label, String value, {bool isTotal = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: isTotal ? 18.sp : 14.sp,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Get.context!.theme.primaryColor : Colors.black87,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isTotal ? 18.sp : 14.sp,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Get.context!.theme.primaryColor : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}