import 'package:dartz/dartz.dart';
import 'package:store/core/network/failure.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/domain/entities/product.dart';
import 'package:store/features/products/domain/usecase/get_single_product.dart';

abstract class ProductsRepository{
  Future<Either <Failure,  List<Product>>>getAllProductsRepo(NoParams noParams);
  Future<Either <Failure,  Product>>getSingleProductsRepo(SingleProductParams singleProductParams);


}