// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/custom_button.dart';
import '../../../components/screen_title.dart';
import '../controllers/buy_now_controller.dart';

class BuyNowView extends GetView<BuyNowController> {
  const BuyNowView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy Now'),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                  title: 'Order Summary',
                  dividerEndIndent: 200,
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
                  child: Row(
                    children: [
                      Container(
                        width: 80.w,
                        height: 80.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: AssetImage(product.image!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      16.horizontalSpace,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.name!,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            8.verticalSpace,
                            Text(
                              '₹${product.price}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                20.verticalSpace,

                // Quantity Selector
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Quantity',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () => controller
                                .setQuantity(controller.quantity.value - 1),
                            icon: const Icon(Icons.remove),
                          ),
                          const SizedBox(
                            width: 40,
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          IconButton(
                            onPressed: () => controller
                                .setQuantity(controller.quantity.value + 1),
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                20.verticalSpace,

                // Address Selection
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
                      const Text(
                        'Delivery Address',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      12.verticalSpace,
                      // Add new address input
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              onChanged: (value) =>
                                  controller.newAddress.value = value,
                              decoration: InputDecoration(
                                hintText: 'Enter new address',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 12.w, vertical: 8.h),
                              ),
                            ),
                          ),
                          8.horizontalSpace,
                          ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  const Color(0xFF7B61FF)),
                              foregroundColor:
                                  WidgetStatePropertyAll(Colors.white),
                              padding: WidgetStatePropertyAll(
                                  const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12)),
                              shape:
                                  WidgetStatePropertyAll(RoundedRectangleBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                              )),
                            ),
                            child: const Text('Add'),
                          ),
                        ],
                      ),
                      12.verticalSpace,
                      Obx(() => Column(
                            children: controller.savedAddresses.map((address) {
                              return RadioListTile<String>(
                                value: address,
                                groupValue: controller.selectedAddress.value,
                                onChanged: (value) {
                                  if (value != null)
                                    controller.selectAddress(value);
                                },
                                title: Text(address),
                              );
                            }).toList(),
                          )),
                    ],
                  ),
                ),

                20.verticalSpace,

                // Payment Method Selection
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
                      const Text(
                        'Payment Method',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      12.verticalSpace,
                      Obx(() => Column(
                            children: controller.paymentMethods.map((method) {
                              return RadioListTile<String>(
                                value: method,
                                groupValue:
                                    controller.selectedPaymentMethod.value,
                                onChanged: (value) {
                                  if (value != null)
                                    controller.selectPaymentMethod(value);
                                },
                                title: Text(method),
                              );
                            }).toList(),
                          )),
                    ],
                  ),
                ),

                20.verticalSpace,

                // Price Breakdown
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
                      _buildPriceRow('Subtotal',
                          '₹${controller.subtotal.toStringAsFixed(2)}'),
                      _buildPriceRow(
                          'Shipping',
                          controller.shipping == 0
                              ? 'FREE'
                              : '₹${controller.shipping.toStringAsFixed(2)}'),
                      _buildPriceRow(
                          'Tax', '₹${controller.tax.toStringAsFixed(2)}'),
                      const Divider(),
                      _buildPriceRow(
                          'Total', '₹${controller.total.toStringAsFixed(2)}',
                          isTotal: true),
                    ],
                  ),
                ),

                20.verticalSpace,

                // Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.back(),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          side:
                              BorderSide(color: Theme.of(context).primaryColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    16.horizontalSpace,
                    Expanded(
                      child: Obx(() => CustomButton(
                            text: controller.isProcessingPayment.value
                                ? 'Processing...'
                                : 'Place Order',
                            onPressed: controller.isProcessingPayment.value
                                ? null
                                : controller.processPayment,
                            fontSize: 16.sp,
                            radius: 12.r,
                            verticalPadding: 16.h,
                            hasShadow: true,
                            shadowColor: Theme.of(context).primaryColor,
                            shadowOpacity: 0.3,
                            shadowBlurRadius: 4,
                            shadowSpreadRadius: 0,
                          )),
                    ),
                  ],
                ),
                20.verticalSpace, // Add bottom padding
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
              fontSize: isTotal ? 18 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Get.context!.theme.primaryColor : Colors.black87,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: isTotal ? 18 : 14,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal ? Get.context!.theme.primaryColor : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
