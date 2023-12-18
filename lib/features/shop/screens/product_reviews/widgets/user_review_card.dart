import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../common/widgets/products/ratings/rating_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard(
      {Key? key,
      required this.image,
      required this.username,
      required this.rate,
      required this.date,
      required this.dateStore})
      : super(key: key);
  final String image;
  final String username;
  final double rate;
  final String date;
  final String dateStore;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage(image)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text(username, style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Review
        Row(
          children: [
            TRatingBarIndicator(rating: rate),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              date,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Company Review
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Pingo Store",
                        style: Theme.of(context).textTheme.titleMedium),
                    Text(dateStore,
                        style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' show less',
                  trimCollapsedText: ' show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}
