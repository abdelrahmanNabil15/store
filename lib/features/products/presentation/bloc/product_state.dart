part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.successAllProducts( List<Product>? data) = _SuccessAllProducts;
  const factory ProductState.successProduct(Product product) = _SuccessProduct;
  const factory ProductState.failure({required String message}) = _Failure;
}
