import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/custom_button.dart';
import '../../../components/screen_title.dart';
import '../controllers/buy_now_controller.dart';

class BuyNowPaymentView extends GetView<BuyNowController> {
  const BuyNowPaymentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Method'),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenTitle(
                title: 'Select Payment',
                dividerEndIndent: 180,
              ),
              20.verticalSpace,

              // Payment Methods
              Text(
                'Payment Methods',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              16.verticalSpace,

              Obx(() => Column(
                children: controller.paymentMethods.map((method) {
                  final isSelected = controller.selectedPaymentMethod.value == method;
                  return Container(
                    margin: EdgeInsets.only(bottom: 12.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: isSelected ? Theme.of(context).primaryColor : Colors.grey.shade300,
                        width: isSelected ? 2 : 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      onTap: () => controller.selectPaymentMethod(method),
                      leading: Icon(
                        isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
                        color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
                      ),
                      title: Text(
                        method,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                        ),
                      ),
                      trailing: method.contains('Credit Card')
                          ? const Icon(Icons.credit_card)
                          : method.contains('PayPal')
                              ? const Icon(Icons.account_balance_wallet)
                              : const Icon(Icons.local_shipping),
                    ),
                  );
                }).toList(),
              )),

              20.verticalSpace,

              // Add New Payment Method Button
              OutlinedButton.icon(
                onPressed: () {
                  // Add new payment method functionality
                },
                icon: const Icon(Icons.add),
                label: const Text('Add New Payment Method'),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.h),
                  side: BorderSide(color: Theme.of(context).primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Order Summary',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    12.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          '₹${controller.total.toStringAsFixed(2)}',
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

              const Spacer(),

              // Continue Button
              Obx(() => CustomButton(
                text: 'Review Order',
                onPressed: controller.selectedPaymentMethod.isNotEmpty
                    ? controller.goToOrderConfirmation
                    : null,
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
          ),
        ),
      ),
    );
  }
}