import 'package:dartz/dartz.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/features/products/domain/repositories/products_repository.dart';

part 'get_product_by_category.freezed.dart';
class GetProductsByCategoryUseCase extends UseCase<List<Product>,ProductParams>
{
  final ProductsRepository  _productsRepo;

  GetProductsByCategoryUseCase(this._productsRepo);

  @override
  Future<Either<Failure, List<Product>>> execute(params) {
   return _productsRepo.getProductsByCategoryRepo( params );
  }


}

@freezed
class ProductParams with _$ProductParams {
  const factory ProductParams({String ? categoryName }) = _ProductParams;
}