part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState.initial() = _Initial;
  const factory ProductDetailsState.loading() = _Loading;
  const factory ProductDetailsState.successProduct(Product product) = _SuccessProduct;
  const factory ProductDetailsState.failure({required String message}) = _Failure;
}
