import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../components/custom_button.dart';

class BuyNowSuccessView extends StatelessWidget {
  const BuyNowSuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments as Map<String, dynamic>?;
    final orderId = args?['orderId'] as String? ?? 'N/A';
    final product = args?['product'];
    final quantity = args?['quantity'] as int? ?? 1;
    final total = args?['total'] as double? ?? 0.0;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Success Icon
              Container(
                width: 120.w,
                height: 120.h,
                decoration: const BoxDecoration(
                  color: Color(0xFF4CAF50),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 60,
                ),
              ),

              30.verticalSpace,

              // Success Message
              const Text(
                'Order Placed Successfully!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              const Text(
                'Your order has been confirmed and will be delivered soon.',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF757575),
                ),
                textAlign: TextAlign.center,
              ),

              40.verticalSpace,

              // Order Details
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Order ID
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Order ID',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          orderId,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    12.verticalSpace,
                    const Divider(),

                    // Product Details
                    if (product != null) ...[
                      12.verticalSpace,
                      Row(
                        children: [
                          Container(
                            width: 50.w,
                            height: 50.h,
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
                                  product.name ?? 'Product',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                4.verticalSpace,
                                Text(
                                  'Quantity: $quantity',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '₹${(product.price ?? 0).toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ],
                      ),
                      12.verticalSpace,
                      const Divider(),
                    ],

                    // Total Amount
                    12.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Amount',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '₹${total.toStringAsFixed(2)}',
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

              40.verticalSpace,

              // Action Buttons
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        // Navigate to order tracking
                        Get.offAllNamed('/base');
                      },
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        side: BorderSide(color: Theme.of(context).primaryColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      child: Text(
                        'Track Order',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: CustomButton(
                      text: 'Continue Shopping',
                      onPressed: () => Get.offAllNamed('/base'),
                      fontSize: 16.sp,
                      radius: 12.r,
                      verticalPadding: 16.h,
                      hasShadow: true,
                      shadowColor: Theme.of(context).primaryColor,
                      shadowOpacity: 0.3,
                      shadowBlurRadius: 4,
                      shadowSpreadRadius: 0,
                    ),
                  ),
                ],
              ),

              20.verticalSpace,

              // Estimated Delivery
              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.blue.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.local_shipping,
                      color: Colors.blue,
                      size: 24.sp,
                    ),
                    12.horizontalSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Estimated Delivery',
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                            ),
                          ),
                          Text(
                            '2-3 business days',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.blue[700],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}