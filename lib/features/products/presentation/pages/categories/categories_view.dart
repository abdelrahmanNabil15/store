import 'package:flutter/material.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/routes_manager.dart';
import 'package:store/core/util/style_manager.dart';
import 'package:store/core/util/values_manager.dart';
import 'package:store/core/util/widgets/custom_text.dart';

class CategoriesView extends StatelessWidget {
    CategoriesView({super.key});

  final List<String> categories = [
    "electronics",
    "jewelery",
    "men's clothing",
    "women's clothing"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: 'Categories', style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(onPressed: ( ){



              }, icon: const Icon(Icons.keyboard_arrow_right)) ],
          ),
          SizedBox(
            height: AppSize.s60,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                width: AppSize.s1,
              ),
              shrinkWrap: true,
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {  Navigator.pushNamed(context, Routes.productsByCategoryRoute,arguments: categories[index] );},
                  child: Container(
                    width: AppSize.s120,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(25.0),
                      // Set your desired radius
                    ),
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                      categories[index],style: Theme.of(context).textTheme.titleMedium,

                    ),
                          ),
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
