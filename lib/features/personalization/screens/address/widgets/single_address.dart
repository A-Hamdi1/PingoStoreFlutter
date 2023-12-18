import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pingostore/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:pingostore/utils/constants/colors.dart';
import 'package:pingostore/utils/constants/sizes.dart';
import 'package:pingostore/utils/helpers/helper_functions.dart';

class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      width: double.infinity,
      backgroundColor: selectedAddress
          ? TColors.primary.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkerGrey
              : TColors.grey,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? TColors.light
                      : TColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'John Doe',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ), // Text
              const SizedBox(height: TSizes.sm / 2),
              const Text('(+123) 456 7890',
                  maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: TSizes.sm / 2),
              const Text('82356 Timmy Coves, South Liana, Maine, 87665, USA',
                  softWrap: true),
            ],
          ),
        ],
      ),
    );
  }
}
