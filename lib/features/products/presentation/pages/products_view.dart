import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/util/values_manager.dart';
import 'package:store/features/products/presentation/bloc/product_bloc.dart';
import 'package:store/features/products/presentation/pages/widgets/Product_Card.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          instance<ProductBloc>()..add(const ProductEvent.fetchAllProducts()),
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return state.maybeWhen(loading: () {
            return const Column(
              children: [
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
            );
          }, successAllProducts: (data) {
            return GridView.builder(
              itemCount: 8,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // Two columns in the grid
                mainAxisSpacing: AppSize.s10,
                // Spacing between items vertically
                crossAxisSpacing:
                    AppSize.s18, // Spacing between items horizontally
              ),
              itemBuilder: (BuildContext context, int index) {
                return ProductCard(
                  image: data![index].image,
                  title: data[index].title,
                  price: double.parse(data[index].price),
                  discount: 2.5,
                );
              },
            );
          }, orElse: () {
            return const Column(
              children: [
                Center(
                  child: Text(" no data found"),
                )
              ],
            );
          });
        },
      ),
    );
  }
}
