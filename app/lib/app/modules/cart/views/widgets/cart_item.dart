import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../data/models/product_model.dart';
import '../../../../../utils/constants.dart';
import '../../controllers/cart_controller.dart';

class CartItem extends GetView<CartController> {
  final Map<String, dynamic> cartItem;
  const CartItem({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final product = cartItem['product'] as ProductModel;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          // Product Image
          Container(
            width: 100.w,
            height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              image: DecorationImage(
                image: AssetImage(product.image!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 15.w),
          // Product Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name!, style: theme.textTheme.bodyLarge),
                SizedBox(height: 5.h),
                Text('Size: ${product.size}',
                    style: theme.textTheme.bodyMedium),
                SizedBox(height: 10.h),
                Text('\$${product.price}', style: theme.textTheme.displayLarge),
              ],
            ),
          ),
          // Quantity Controls
          Column(
            children: [
              IconButton(
                onPressed: () => controller.increaseQuantity(product.id!),
                icon: const Icon(Icons.add),
              ),
              Obx(() => Text(
                '${controller.getProductQuantity(product.id!)}',
                style: theme.textTheme.bodyLarge,
              )),
              IconButton(
                onPressed: () => controller.decreaseQuantity(product.id!),
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
          // Delete Button
          IconButton(
            onPressed: () => controller.removeFromCart(product.id!),
            icon: SvgPicture.asset(
              Constants.cancelIcon,
              colorFilter: ColorFilter.mode(
                theme.iconTheme.color!,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
