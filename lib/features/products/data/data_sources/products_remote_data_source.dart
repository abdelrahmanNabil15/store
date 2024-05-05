import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:store/core/app/constants.dart';
import 'package:store/core/network/api_service.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/data/model/get_all_products_response.dart';
import 'package:store/features/products/domain/entities/product.dart';

import '../../domain/usecase/get_single_product.dart';

abstract class ProductsRemoteDataSource {
  Future<Either<Failure, List<ProductModel>>> getAllProducts(NoParams noParams,);
  Future<Either<Failure, ProductModel>> getSingleProducts(SingleProductParams singleProductParams,);
  
}

class ProductsRemoteDataSourceImp extends ProductsRemoteDataSource {
  final ApiService _apiService;

  ProductsRemoteDataSourceImp(this._apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> getAllProducts(
      NoParams noParams) async {
    final response = await _apiService.get(
      endPoint: Constants.getAllProductsUrl,
      converter: (response) => List<ProductModel>.from((response as List).map(
        (e) => ProductModel.fromJson(e),
      )),
    );

    return response;
  }

  @override
  Future<Either<Failure, ProductModel>> getSingleProducts(SingleProductParams singleProductParams)async {
   final  response= await _apiService.get(endPoint: '${Constants.getSingleProductsUrl}${singleProductParams.productId}' ,
       converter: (response)=>ProductModel.fromJson(response));
   return response;
  }
}
