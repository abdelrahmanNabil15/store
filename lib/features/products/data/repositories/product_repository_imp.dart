
import 'package:dartz/dartz.dart';
import 'package:store/core/network/error_handler.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/data/data_sources/products_remote_data_source.dart';

import 'package:store/features/products/domain/entities/product.dart';
import 'package:store/features/products/domain/repositories/products_repository.dart';
import 'package:store/features/products/domain/usecase/get_single_product.dart';

class ProductRepositoryImp implements ProductsRepository{
  final ProductsRemoteDataSource productsRemoteDataSource;

  ProductRepositoryImp(this.productsRemoteDataSource);
  @override
  Future<Either<Failure, List<Product>>> getAllProductsRepo(NoParams noParams) async{
     final response = await productsRemoteDataSource.getAllProducts(noParams);
     return response.fold((failure) => Left(failure),
             (productsResponse) => Right( productsResponse));
  }

  @override
  Future<Either<Failure, Product>> getSingleProductsRepo(SingleProductParams singleProductParams) async {
    try {
      final response = await productsRemoteDataSource.getSingleProducts(
          singleProductParams);

      return response.fold((failure) =>
          left(ErrorHandler
              .handle(failure)
              .failure),
              (productModel) => Right(productModel));
    }catch (e){
    return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }


}