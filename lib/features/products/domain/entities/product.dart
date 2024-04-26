import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';
@freezed
class Product with _$Product {
  const factory Product({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'price') required double price,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'category') required String category,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'rating') required Rating rating,
  }) = _Product;
factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
@freezed
class Rating with _$Rating {
  const factory Rating({
    @JsonKey(name: 'rate') required double rate,
  @JsonKey(name: 'count') required int count,

}) = _Rating;
factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}