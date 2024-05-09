import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/domain/entities/product.dart';
import 'package:store/features/products/domain/usecase/get_all_products.dart';
import 'package:store/features/products/domain/usecase/get_product_by_category.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductsUseCase _getProductsUseCase;
  final GetProductsByCategoryUseCase getProductsByCategoryUseCase;

  ProductBloc(this._getProductsUseCase, this.getProductsByCategoryUseCase) : super(const ProductState.initial()) {
    /// fetch all products event
    on<_FetchAllProducts>((_FetchAllProducts event, emit) async {
       emit( const ProductState.loading());
      final data = await _getProductsUseCase.execute(NoParams());
      data.fold((failure) {
        emit(ProductState.failure(message: failure.message),);
      }, (success) {
        emit(ProductState.successAllProducts(success));
      });
    });
    /// fetch single product event
    // on<_FetchProductById>((_FetchProductById event ,emit)async{
    //    emit( const ProductState.loading());
    //   final data = await _getProductsUseCase
    //
    // });

    on<_FetchProductsByCategory>((_FetchProductsByCategory event, emit) async {
      emit( const ProductState.loading());
     final params= ProductParams(categoryName:event.categoryName);
      final data = await getProductsByCategoryUseCase.execute( params);
      data.fold((failure) {
        emit(ProductState.failure(message: failure.message),);
      }, (success) {
        emit(ProductState.successAllProducts(success));
      });
    });
  }
}
