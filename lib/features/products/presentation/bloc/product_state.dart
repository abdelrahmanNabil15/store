part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.success( List<Product> data) = _Success;
  const factory ProductState.failure({required String message}) = _Failure;
}
