import 'package:dartz/dartz.dart';
import 'package:store/core/app/constants.dart';
import 'package:store/core/network/api_service.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/data/model/get_all_products_response.dart';
import 'package:store/features/products/domain/entities/product.dart';

abstract class ProductsRemoteDataSource {
  Future<Either<Failure, GetAllProductsResponse>> getAllProducts(
      NoParams noParams);
}

class ProductsRemoteDataSourceImp extends ProductsRemoteDataSource {
  final ApiService _apiService;

  ProductsRemoteDataSourceImp(this._apiService);

  @override
  Future<Either<Failure, GetAllProductsResponse>> getAllProducts(
      NoParams noParams) async {
    final response = await _apiService.get(
        endPoint: Constants.getAllProductsUrl,
        converter: (response) =>
            GetAllProductsResponse.fromJson(response as Map<String, dynamic>));
    return response;
  }
}
