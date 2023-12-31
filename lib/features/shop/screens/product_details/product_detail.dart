import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pingostore/common/widgets/texts/section_heading.dart';
import 'package:pingostore/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:pingostore/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:pingostore/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:pingostore/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:pingostore/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:pingostore/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:pingostore/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';
import 'package:pingostore/utils/helpers/helper_functions.dart';
import '../../models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1- Product Image Slider
            const TProductImageSlider(),
            // 2- Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // - Rating & Share Button
                  const TRatingAndShare(),
                  // - Price, Title, Stock & Brand
                  const TProductMetaData(),
                  // - Attributes (Color, Size etc.)
                  const TProductAttributes(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  // - Checkout Button
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // - Description
                  const TSectionsHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i dvv dsvfsdgdg edvdsv    ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // -Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionsHeading(
                          title: 'Reviews (199)', showActionButton: false),
                      IconButton(
                          icon: const Icon(Iconsax.arrow_right_3, size: 18),
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
