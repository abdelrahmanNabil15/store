import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/util/values_manager.dart';
import 'package:store/features/products/presentation/bloc/product_bloc.dart';
import 'package:store/features/products/presentation/pages/product_details/product_details_view.dart';
import 'package:store/features/products/presentation/pages/widgets/Product_Card.dart';

class ProductsByCategory extends StatelessWidget {
  final String? categoryName;

  const ProductsByCategory({super.key, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => instance<ProductBloc>()
          ..add(
              ProductEvent.fetchProductsByCategory(categoryName: categoryName)),
        child:
            BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: CircularProgressIndicator(),
                  )
                ],
              );
            },
            failure: (failure) {
              return Center(
                child: Text(failure),
              );
            },
            orElse: () {
              return const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(" no data found"),
                  )
                ],
              );
            },
            successAllProducts: (data) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    GridView.builder(
                      itemCount: data!.length,
                      physics: const AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.85,
                        // Two columns in the grid
                        mainAxisSpacing: AppSize.s20,
                        // Spacing between items vertically
                        crossAxisSpacing:
                            AppSize.s10, // Spacing between items horizontally
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductDetailsView(
                                            productId: int.parse(data[index].id),
                                          )));
                            },
                            child: ProductCard(
                              image: data[index].image,
                              title: data[index].title,
                              price: double.parse(data[index].price),
                              discount: 2.5,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
