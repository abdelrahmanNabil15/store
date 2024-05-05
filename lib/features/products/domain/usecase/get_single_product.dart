import 'package:dartz/dartz.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/features/products/domain/repositories/products_repository.dart';
part 'get_single_product.freezed.dart';
class GetSingleProductUseCase extends UseCase<Product,SingleProductParams>{

  final ProductsRepository  _productsRepo;

  GetSingleProductUseCase(this._productsRepo);
  @override
  Future<Either<Failure, Product>> execute(params) {
  return _productsRepo.getSingleProductsRepo(params);
  }
}


@freezed
class SingleProductParams with _$SingleProductParams {
 const factory SingleProductParams({int? productId }) = _SingleProductParams;
}