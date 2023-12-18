import 'package:flutter/material.dart';
import 'package:pingostore/common/widgets/products/cart/add_remove_button.dart';
import 'package:pingostore/common/widgets/products/cart/cart_item.dart';
import 'package:pingostore/common/widgets/texts/product_price_text.dart';
import 'package:pingostore/utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (context, index) => Column(
        children: [
          const TCartItem(),
          if (showAddRemoveButtons)
            const SizedBox(height: TSizes.spaceBtwItems),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Extra Space
                    SizedBox(width: 70),

                    /// Add Remove Buttons
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                TProductPriceText(price: '216'),
              ],
            ),
        ],
      ),
    );
  }
}
