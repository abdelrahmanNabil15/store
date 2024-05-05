import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';



class Product extends Equatable {
  final String id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final String rate;
  final String count;

  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rate,
    required this.count,
  });

  @override
  // TODO: implement props
  List<Object?> get props =>
      [id, title, price, description, category, image, rate, count];
}
