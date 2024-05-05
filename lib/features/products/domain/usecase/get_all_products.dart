

import 'package:dartz/dartz.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/domain/entities/product.dart';
import 'package:store/features/products/domain/repositories/products_repository.dart';

class GetProductsUseCase extends UseCase< List<Product>,NoParams  >{

  final ProductsRepository  _productsRepo;

  GetProductsUseCase(this._productsRepo);

  @override
  Future<Either<Failure,  List<Product> >> execute(NoParams params) {
    return _productsRepo.getAllProductsRepo(params );
  }


}