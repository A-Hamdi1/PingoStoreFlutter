import 'package:flutter/material.dart';
import 'package:pingostore/utils/constants/sizes.dart';
import 'package:pingostore/utils/helpers/helper_functions.dart';
import 'package:pingostore/common/widgets/images/t_rounded_image.dart';
import 'package:pingostore/common/widgets/texts/brand_title_with_verified_icon.dart';
import 'package:pingostore/common/widgets/texts/product_title_text.dart';
import 'package:pingostore/utils/constants/colors.dart';
import 'package:pingostore/utils/constants/image_strings.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: THelperFunctions.isDarkMode(context)
              ? TColors.darkerGrey
              : TColors.light,
        ),

        /// Title, Price, & Size
        const SizedBox(width: TSizes.spaceBtwItems),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TBrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                  child: TProductTitleText(
                      title: 'Black Sports Shoes ', maxLines: 1)),

              /// Attributes
              Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: 'color ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Green ',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: 'Size ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: 'Uk 08 ',
                      style: Theme.of(context).textTheme.bodyLarge),
                ]),
              )
            ],
          ),
        ),
      ],
    );
  }
}
