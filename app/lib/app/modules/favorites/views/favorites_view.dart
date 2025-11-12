import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../components/no_data.dart';
import '../../../components/screen_title.dart';
import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          children: [
            30.verticalSpace,
            const ScreenTitle(
              title: 'Favorites',
              dividerEndIndent: 200,
            ).animate().fade().slideY(
                  duration: const Duration(milliseconds: 400),
                  begin: -0.2,
                  curve: Curves.easeOut,
                ),
            20.verticalSpace,
            Obx(() {
              final favController = Get.find<FavoritesController>();
              return favController.favorites.isEmpty
                  ? const NoData(text: 'No Products in Favorite Yet!')
                  : ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: favController.favorites.length,
                      itemBuilder: (context, index) {
                        final product = favController.favorites[index];
                        return ListTile(
                          title: Text(product.name ?? ''),
                          subtitle: Text('₹${product.price ?? 0}'),
                          leading: product.image != null
                              ? Image.network(product.image!,
                                  width: 50, height: 50, fit: BoxFit.cover)
                              : const Icon(Icons.image, size: 50),
                          trailing: IconButton(
                            icon: const Icon(Icons.favorite, color: Colors.red),
                            onPressed: () {
                              favController.removeFromFavorites(product);
                            },
                          ),
                        );
                      },
                    );
            }),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
