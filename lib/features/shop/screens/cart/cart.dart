import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pingostore/common/widgets/products/cart/add_remove_button.dart';
import 'package:pingostore/common/widgets/texts/product_price_text.dart';

import 'package:pingostore/utils/constants/sizes.dart';
import 'package:pingostore/common/widgets/products/cart/cart_item.dart';
import 'package:pingostore/common/widgets/appbar/appbar.dart';

import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,

          title:
              Text("Cart", style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 5,
          separatorBuilder: (_, __) =>
              const SizedBox(height: TSizes.spaceBtwSections),
          itemBuilder: (context, index) => const Column(
            children: [
              TCartItem(),
              SizedBox(height: TSizes.spaceBtwItems),
              Row(
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => const CheckoutScreen()),
            child: const Text('Checkout \$256.0')),
      ),
    );
  }
}
