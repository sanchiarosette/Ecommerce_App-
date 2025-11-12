import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/custom_button.dart';
import '../../../components/screen_title.dart';
import '../controllers/buy_now_controller.dart';

class BuyNowAddressView extends GetView<BuyNowController> {
  const BuyNowAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Address'),
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
                title: 'Delivery Address',
                dividerEndIndent: 150,
              ),
              20.verticalSpace,

              // Saved Addresses
              Text(
                'Saved Addresses',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              16.verticalSpace,

              Obx(() => Column(
                children: controller.savedAddresses.map((address) {
                  final isSelected = controller.selectedAddress.value == address;
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
                      onTap: () => controller.selectAddress(address),
                      leading: Icon(
                        isSelected ? Icons.check_circle : Icons.radio_button_unchecked,
                        color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
                      ),
                      title: Text(
                        address,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.edit, size: 20),
                        onPressed: () {
                          // Edit address functionality
                        },
                      ),
                    ),
                  );
                }).toList(),
              )),

              20.verticalSpace,

              // Add New Address Button
              OutlinedButton.icon(
                onPressed: () {
                  // Add new address functionality
                },
                icon: const Icon(Icons.add),
                label: const Text('Add New Address'),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50.h),
                  side: BorderSide(color: Theme.of(context).primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ),

              const Spacer(),

              // Continue Button
              Obx(() => CustomButton(
                text: 'Continue to Payment',
                onPressed: controller.selectedAddress.isNotEmpty
                    ? controller.goToPaymentSelection
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