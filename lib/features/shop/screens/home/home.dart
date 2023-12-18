import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pingostore/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:pingostore/features/shop/screens/home/widgets/home_categories.dart';
import 'package:pingostore/features/shop/screens/home/widgets/promo_slider.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import '../all_products/all_products.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///SearchBar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  ///Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///--Heading
                        TSectionsHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        ///--Categories List
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Heading
                  TSectionsHeading(
                      title: 'Popular Products',
                      onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// -- Popular Products
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
