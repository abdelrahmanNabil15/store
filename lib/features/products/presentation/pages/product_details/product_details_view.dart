import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/util/color_manager.dart';
import 'package:store/core/util/font_manager.dart';
import 'package:store/core/util/style_manager.dart';
import 'package:store/core/util/values_manager.dart';
import 'package:store/core/util/widgets/Loading_dialog.dart';
import 'package:store/features/products/domain/entities/product.dart';
import 'package:store/features/products/presentation/bloc/product_details_bloc/product_details_bloc.dart';

class ProductDetailsView extends StatelessWidget {
  final int? productId;

  const ProductDetailsView({super.key, this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => instance<ProductDetailsBloc>()
        ..add(ProductDetailsEvent.fetchProductById(productId: productId!)),
      child: Scaffold(
        appBar: AppBar(

            title: Text("details",style: Theme.of(context).textTheme.titleLarge, ),


           ),
        body: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(orElse: () {
              return const Scaffold(
                  body: Column(
                children: [Placeholder()],
              ));
            }, loading: () {
              return const ShowLoaderDialog();
            }, failure: (message) {
              return Center(
                child: Text(message),
              );
            }, successProduct: (data) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppSize.s10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                data.image,
                                fit: BoxFit.fill,
                                height: AppSize.s350,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          data.title,
                          style:Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(
                          height: AppSize.s8,
                        ),
                        Text(
                          '\$${data.price}',
                          style: Theme.of(context).textTheme.titleLarge
                        ),
                        Text(
                          data.description,
                          style:  Theme.of(context).textTheme.bodyLarge,
                        ),
                        SizedBox(
                          height: AppSize.s8,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: AppSize.s50,
                      margin: const EdgeInsets.all(5),
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                ColorManager.colorPrimaryLight)),
                        onPressed: () {},
                        child: Text(
                          "Add to Cart",
                          style: getBoldStyle(
                              color: ColorManager.colorWhite,
                              fontSize: FontSize.s20),
                        ),
                      ),
                    ),
                  )
                ],
              );
            });
          },
        ),
      ),
    );
  }
}
