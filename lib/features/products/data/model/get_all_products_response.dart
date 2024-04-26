import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/product.dart';

part 'get_all_products_response.freezed.dart';

part 'get_all_products_response.g.dart';

@freezed
class GetAllProductsResponse with _$GetAllProductsResponse {
  const factory GetAllProductsResponse(
      { @JsonKey(includeFromJson: false,) List<Product>? products}) = _GetAllProductsResponse;

  const GetAllProductsResponse._();

  factory GetAllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductsResponseFromJson(json);

  List<Product> toEntity() {
    final productList = products!.map<Product>(
          (model) =>
          Product(
            id: model.id,
            price: model.price,
            description: model.description,
            image: model.image,
            title: model.title,
            rating: model.rating,
            category: model.category,),
    ).toList();
    return  productList;
  }

}

