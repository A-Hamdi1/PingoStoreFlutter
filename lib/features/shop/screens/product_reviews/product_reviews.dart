import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pingostore/common/widgets/appbar/appbar.dart';
import 'package:pingostore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pingostore/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:pingostore/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:pingostore/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:pingostore/utils/device/device_utility.dart';

import '../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- Appbar
      appBar:
          const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),
      // -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Ratings and reviews are verified and are from people who use the same type of device that you use. "),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5,),
              Text("12,611", style: Theme.of(context). textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// User Reviews List
               const UserReviewCard(image: TImages.userProfileImage1, username: 'Marco Polo', rate: 4.2, date: '01 Nov 2023', dateStore: '02  Nov 2023',),
               const UserReviewCard(image: TImages.userProfileImage2, username: 'John Doe', rate: 4.5, date: '09 Mai 2023', dateStore: '10 Mai 2023',),
               const UserReviewCard(image: TImages.userProfileImage3, username: 'John Wick', rate: 4.8, date: '05 Mars 2023', dateStore: '06 Mars 2023',),
               const UserReviewCard(image: TImages.userProfileImage1, username: 'IL Padrino', rate: 4.6, date: '07 Jun 2023', dateStore: '08 Jun 2023',),

            ],
          ),
        ),
      ),
    );
  }
}

