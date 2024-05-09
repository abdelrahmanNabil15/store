import 'package:dartz/dartz.dart';
import 'package:store/core/app/di.dart';
import 'package:store/core/network/error_handler.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/network/netword_info.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/data/data_sources/products_remote_data_source.dart';

import 'package:store/features/products/domain/entities/product.dart';
import 'package:store/features/products/domain/repositories/products_repository.dart';
import 'package:store/features/products/domain/usecase/get_product_by_category.dart';
import 'package:store/features/products/domain/usecase/get_single_product.dart';

class ProductRepositoryImp implements ProductsRepository {
  final ProductsRemoteDataSource productsRemoteDataSource;

  ProductRepositoryImp(this.productsRemoteDataSource);

  final networkInfo = instance<NetworkInfo>();

  @override
  Future<Either<Failure, List<Product>>> getAllProductsRepo(
      NoParams noParams) async {
    if (await networkInfo.isConnected) {
      try {
        final response =
            await productsRemoteDataSource.getAllProducts(noParams);
        return response.fold(
            (failure) => Left(ErrorHandler.handle(failure).failure),
            (productsResponse) => Right(productsResponse));
      } catch (e) {
        return Left((ErrorHandler.handle(e).failure));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, Product>> getSingleProductsRepo(
      SingleProductParams singleProductParams) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await productsRemoteDataSource
            .getSingleProducts(singleProductParams);

        return response.fold(
            (failure) => left(ErrorHandler.handle(failure).failure),
            (productModel) => Right(productModel));
      } catch (e) {
        return Left((ErrorHandler.handle(e).failure));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getProductsByCategoryRepo(
      ProductParams productParams) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await productsRemoteDataSource
            .getProductsByCategoryRepo(productParams);
      return  response.fold((failure) => left(ErrorHandler.handle(failure).failure),
            (response) => Right(response));
      } catch (e) {
        return Left((ErrorHandler.handle(e).failure));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
