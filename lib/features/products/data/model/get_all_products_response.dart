import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/product.dart';

// part 'get_all_products_response.freezed.dart';
//
// part 'get_all_products_response.g.dart';
//
// @freezed
// class GetAllProductsResponse with _$GetAllProductsResponse {
//
//   const factory GetAllProductsResponse({
//     @JsonSerializable(explicitToJson: true)
//
//       List<Product>? products,
//   }) = _GetAllProductsResponse;
//
//   const GetAllProductsResponse._();
//
//   factory GetAllProductsResponse.fromJson(Map<String, dynamic> json) =>
//       _$GetAllProductsResponseFromJson(json);
//
//   List<Product> toEntity() {
//
//     return products??[]  ;
//   }
//
// }
//

class ProductModel extends Product {
    ProductModel({
    required super.id,
    required super.title,
    required super.price,
    required super.description,
    required super.category,
    required super.image,
    required super.rate,
    required super.count,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] .toString(),
      title: json['title'] .toString(),
      price: json['price'].toString(),
      description: json['description'] .toString(),
      category: json['category'] .toString(),
      image: json['image'] .toString(),
       rate: json['rating']['rate'] .toString() ,
       count: json['rating']['count'].toString() ,
    );
  }

  List<Product>? products;
  List<Product> toProduct() {
    final listProduct = products!..map<Product>((model) =>Product(
      id: model .id,
      title:model. title,
      price:model. price,
      description:model. description,
      category:model. category,
      image:model. image,
      rate:model.rate  ,
      count:model.count  ,
    ),).toList();



     return listProduct??[]  ;
   }
  }

