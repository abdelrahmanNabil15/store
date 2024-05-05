import 'package:flutter/material.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/style_manager.dart';
import 'package:store/core/util/values_manager.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final double discount; // Assuming a discount percentage

  const ProductCard({super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   const EdgeInsets.all(AppPadding.p8),
      decoration: BoxDecoration(
        color: ColorManager.colorWhite,
        borderRadius: BorderRadius.circular(AppSize.s10),
        boxShadow: [
          BoxShadow(
            color: ColorManager.colorPlaceHolderLight,
            blurRadius: AppSize.s10,
            spreadRadius: AppSize.s1, // Optional: Add a slight spread for a softer shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s10),
            child: Image.network(
              image,
              fit: BoxFit.fill,
              height: AppSize.s140,
            ),
          ),
          const SizedBox(height: AppSize.s10),

          // Product details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align horizontally
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  title,
            overflow: TextOverflow.ellipsis,
                  style: getBoldStyle(color: ColorManager.colorFontPrimaryLight)
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: getMediumStyle(color: ColorManager.colorGrey1)
                ),
              ),
            ],
          ),

          if (discount > 0) // Only show badge if there's a discount
            Row(
              children: [
                Text(
                  '${discount.toStringAsFixed(0)}% OFF',
                  style:  getMediumStyle(color: ColorManager.colorError,fontSize: AppSize.s12)
                ),
              ],
            ),
        ],
      ),
    );
  }
}
