import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/core/usecase/base_usecase.dart';
import 'package:store/features/products/domain/entities/product.dart';
import 'package:store/features/products/domain/usecase/get_all_products.dart';

part 'product_event.dart';

part 'product_state.dart';

part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductsUseCase _getProductsUseCase;

  ProductBloc(this._getProductsUseCase) : super(const ProductState.initial()) {
    /// fetch aal products event
    on<_FetchAllProducts>((_FetchAllProducts event, emit) async {
       emit( const ProductState.loading());
      final data = await _getProductsUseCase.execute(NoParams());
      data.fold((failure) {
        emit(ProductState.failure(message: failure.message),);
      }, (success) {
        emit(ProductState.successAllProducts(success));
      });
    });


  }
}
