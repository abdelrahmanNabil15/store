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
        color:  Theme.of(context).cardTheme.color,
        borderRadius: BorderRadius.circular(AppSize.s10),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).disabledColor,
            blurRadius: AppSize.s10,
            spreadRadius: AppSize.s1, // Optional: Add a slight spread for a softer shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s10),
            child: Center(
              child: Image.network(
                image,
                fit: BoxFit.fill ,
                height: AppSize.s140,
              ),
            ),
          ),
          const SizedBox(height: AppSize.s10),

          // Product details
          Text(
            title,
          overflow: TextOverflow.ellipsis,

              style: Theme.of(context).textTheme.titleMedium
          ),
          Text(
            '\$${price.toStringAsFixed(2)}',

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
