part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchAllProducts() = _FetchAllProducts;
  const factory ProductEvent.fetchProductsByCategory({String? categoryName}) = _FetchProductsByCategory;

}
