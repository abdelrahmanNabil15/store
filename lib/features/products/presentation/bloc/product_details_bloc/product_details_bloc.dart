import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/features/products/domain/entities/product.dart';
import 'package:store/features/products/domain/usecase/get_single_product.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';

class ProductDetailsBloc extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final GetSingleProductUseCase _getSingleProductUseCase;

  ProductDetailsBloc(this._getSingleProductUseCase) : super(const ProductDetailsState.initial()) {

    on<_FetchProductById>(( _FetchProductById event, emit) async{
      emit(const ProductDetailsState.loading());
       final params= SingleProductParams( productId: event.productId);
        final data = await _getSingleProductUseCase.execute(params);
        data.fold((failure) {
          emit(ProductDetailsState.failure(message: failure.message));
        }, (success){
          emit(ProductDetailsState.successProduct(success));
        });
    });
  }
}
