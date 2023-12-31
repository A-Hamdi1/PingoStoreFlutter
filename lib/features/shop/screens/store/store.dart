import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pingostore/common/widgets/appbar/appbar.dart';
import 'package:pingostore/common/widgets/appbar/tapbar.dart';
import 'package:pingostore/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:pingostore/common/widgets/layouts/grid_layout.dart';
import 'package:pingostore/common/widgets/brands/brand_card.dart';
import 'package:pingostore/common/widgets/texts/section_heading.dart';
import 'package:pingostore/features/shop/controllers/category_controller.dart';
import 'package:pingostore/features/shop/screens/store/widgets/category_tab.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../brand/all_brands.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = CategoryController.instance.featuredCategories;
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        appBar: TAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            TCartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      /// -- Search bar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      const TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      ///-- Features Brands
                      TSectionsHeading(
                        title: 'Featured Brands',
                        showActionButton: true,
                        onPressed: () => Get.to(() => const AllBrandsScreen()),
                      ),
                      const SizedBox(height: TSizes.spaceBtwItems / 1.5),
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return const TBrandCard(showBorder: true);
                        },
                      )
                    ],
                  ),
                ),

                /// Tabs
                bottom: TTabBar(
                    tabs: categories
                        .map((category) => Tab(child: Text(category.name)))
                        .toList()),
              ),
            ];
          },

          /// -- Body
          body: TabBarView(
            children: categories
                .map((category) => TCategoryTab(
                      category: category,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
