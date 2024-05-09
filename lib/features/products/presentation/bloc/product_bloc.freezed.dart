// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function(String? categoryName) fetchProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function(String? categoryName)? fetchProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function(String? categoryName)? fetchProductsByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllProducts value) fetchAllProducts,
    required TResult Function(_FetchProductsByCategory value)
        fetchProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllProducts value)? fetchAllProducts,
    TResult? Function(_FetchProductsByCategory value)? fetchProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllProducts value)? fetchAllProducts,
    TResult Function(_FetchProductsByCategory value)? fetchProductsByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAllProductsImplCopyWith<$Res> {
  factory _$$FetchAllProductsImplCopyWith(_$FetchAllProductsImpl value,
          $Res Function(_$FetchAllProductsImpl) then) =
      __$$FetchAllProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchAllProductsImpl>
    implements _$$FetchAllProductsImplCopyWith<$Res> {
  __$$FetchAllProductsImplCopyWithImpl(_$FetchAllProductsImpl _value,
      $Res Function(_$FetchAllProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllProductsImpl implements _FetchAllProducts {
  const _$FetchAllProductsImpl();

  @override
  String toString() {
    return 'ProductEvent.fetchAllProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchAllProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function(String? categoryName) fetchProductsByCategory,
  }) {
    return fetchAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function(String? categoryName)? fetchProductsByCategory,
  }) {
    return fetchAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function(String? categoryName)? fetchProductsByCategory,
    required TResult orElse(),
  }) {
    if (fetchAllProducts != null) {
      return fetchAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllProducts value) fetchAllProducts,
    required TResult Function(_FetchProductsByCategory value)
        fetchProductsByCategory,
  }) {
    return fetchAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllProducts value)? fetchAllProducts,
    TResult? Function(_FetchProductsByCategory value)? fetchProductsByCategory,
  }) {
    return fetchAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllProducts value)? fetchAllProducts,
    TResult Function(_FetchProductsByCategory value)? fetchProductsByCategory,
    required TResult orElse(),
  }) {
    if (fetchAllProducts != null) {
      return fetchAllProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchAllProducts implements ProductEvent {
  const factory _FetchAllProducts() = _$FetchAllProductsImpl;
}

/// @nodoc
abstract class _$$FetchProductsByCategoryImplCopyWith<$Res> {
  factory _$$FetchProductsByCategoryImplCopyWith(
          _$FetchProductsByCategoryImpl value,
          $Res Function(_$FetchProductsByCategoryImpl) then) =
      __$$FetchProductsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryName});
}

/// @nodoc
class __$$FetchProductsByCategoryImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$FetchProductsByCategoryImpl>
    implements _$$FetchProductsByCategoryImplCopyWith<$Res> {
  __$$FetchProductsByCategoryImplCopyWithImpl(
      _$FetchProductsByCategoryImpl _value,
      $Res Function(_$FetchProductsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
  }) {
    return _then(_$FetchProductsByCategoryImpl(
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchProductsByCategoryImpl implements _FetchProductsByCategory {
  const _$FetchProductsByCategoryImpl({this.categoryName});

  @override
  final String? categoryName;

  @override
  String toString() {
    return 'ProductEvent.fetchProductsByCategory(categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductsByCategoryImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductsByCategoryImplCopyWith<_$FetchProductsByCategoryImpl>
      get copyWith => __$$FetchProductsByCategoryImplCopyWithImpl<
          _$FetchProductsByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllProducts,
    required TResult Function(String? categoryName) fetchProductsByCategory,
  }) {
    return fetchProductsByCategory(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllProducts,
    TResult? Function(String? categoryName)? fetchProductsByCategory,
  }) {
    return fetchProductsByCategory?.call(categoryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllProducts,
    TResult Function(String? categoryName)? fetchProductsByCategory,
    required TResult orElse(),
  }) {
    if (fetchProductsByCategory != null) {
      return fetchProductsByCategory(categoryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllProducts value) fetchAllProducts,
    required TResult Function(_FetchProductsByCategory value)
        fetchProductsByCategory,
  }) {
    return fetchProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllProducts value)? fetchAllProducts,
    TResult? Function(_FetchProductsByCategory value)? fetchProductsByCategory,
  }) {
    return fetchProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllProducts value)? fetchAllProducts,
    TResult Function(_FetchProductsByCategory value)? fetchProductsByCategory,
    required TResult orElse(),
  }) {
    if (fetchProductsByCategory != null) {
      return fetchProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class _FetchProductsByCategory implements ProductEvent {
  const factory _FetchProductsByCategory({final String? categoryName}) =
      _$FetchProductsByCategoryImpl;

  String? get categoryName;
  @JsonKey(ignore: true)
  _$$FetchProductsByCategoryImplCopyWith<_$FetchProductsByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product>? data) successAllProducts,
    required TResult Function(Product product) successProduct,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product>? data)? successAllProducts,
    TResult? Function(Product product)? successProduct,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product>? data)? successAllProducts,
    TResult Function(Product product)? successProduct,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAllProducts value) successAllProducts,
    required TResult Function(_SuccessProduct value) successProduct,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAllProducts value)? successAllProducts,
    TResult? Function(_SuccessProduct value)? successProduct,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAllProducts value)? successAllProducts,
    TResult Function(_SuccessProduct value)? successProduct,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product>? data) successAllProducts,
    required TResult Function(Product product) successProduct,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product>? data)? successAllProducts,
    TResult? Function(Product product)? successProduct,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product>? data)? successAllProducts,
    TResult Function(Product product)? successProduct,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAllProducts value) successAllProducts,
    required TResult Function(_SuccessProduct value) successProduct,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAllProducts value)? successAllProducts,
    TResult? Function(_SuccessProduct value)? successProduct,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAllProducts value)? successAllProducts,
    TResult Function(_SuccessProduct value)? successProduct,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product>? data) successAllProducts,
    required TResult Function(Product product) successProduct,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product>? data)? successAllProducts,
    TResult? Function(Product product)? successProduct,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product>? data)? successAllProducts,
    TResult Function(Product product)? successProduct,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAllProducts value) successAllProducts,
    required TResult Function(_SuccessProduct value) successProduct,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAllProducts value)? successAllProducts,
    TResult? Function(_SuccessProduct value)? successProduct,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAllProducts value)? successAllProducts,
    TResult Function(_SuccessProduct value)? successProduct,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessAllProductsImplCopyWith<$Res> {
  factory _$$SuccessAllProductsImplCopyWith(_$SuccessAllProductsImpl value,
          $Res Function(_$SuccessAllProductsImpl) then) =
      __$$SuccessAllProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product>? data});
}

/// @nodoc
class __$$SuccessAllProductsImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessAllProductsImpl>
    implements _$$SuccessAllProductsImplCopyWith<$Res> {
  __$$SuccessAllProductsImplCopyWithImpl(_$SuccessAllProductsImpl _value,
      $Res Function(_$SuccessAllProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SuccessAllProductsImpl(
      freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$SuccessAllProductsImpl implements _SuccessAllProducts {
  const _$SuccessAllProductsImpl(final List<Product>? data) : _data = data;

  final List<Product>? _data;
  @override
  List<Product>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductState.successAllProducts(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAllProductsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAllProductsImplCopyWith<_$SuccessAllProductsImpl> get copyWith =>
      __$$SuccessAllProductsImplCopyWithImpl<_$SuccessAllProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product>? data) successAllProducts,
    required TResult Function(Product product) successProduct,
    required TResult Function(String message) failure,
  }) {
    return successAllProducts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product>? data)? successAllProducts,
    TResult? Function(Product product)? successProduct,
    TResult? Function(String message)? failure,
  }) {
    return successAllProducts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product>? data)? successAllProducts,
    TResult Function(Product product)? successProduct,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successAllProducts != null) {
      return successAllProducts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAllProducts value) successAllProducts,
    required TResult Function(_SuccessProduct value) successProduct,
    required TResult Function(_Failure value) failure,
  }) {
    return successAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAllProducts value)? successAllProducts,
    TResult? Function(_SuccessProduct value)? successProduct,
    TResult? Function(_Failure value)? failure,
  }) {
    return successAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAllProducts value)? successAllProducts,
    TResult Function(_SuccessProduct value)? successProduct,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successAllProducts != null) {
      return successAllProducts(this);
    }
    return orElse();
  }
}

abstract class _SuccessAllProducts implements ProductState {
  const factory _SuccessAllProducts(final List<Product>? data) =
      _$SuccessAllProductsImpl;

  List<Product>? get data;
  @JsonKey(ignore: true)
  _$$SuccessAllProductsImplCopyWith<_$SuccessAllProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessProductImplCopyWith<$Res> {
  factory _$$SuccessProductImplCopyWith(_$SuccessProductImpl value,
          $Res Function(_$SuccessProductImpl) then) =
      __$$SuccessProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$SuccessProductImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessProductImpl>
    implements _$$SuccessProductImplCopyWith<$Res> {
  __$$SuccessProductImplCopyWithImpl(
      _$SuccessProductImpl _value, $Res Function(_$SuccessProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$SuccessProductImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$SuccessProductImpl implements _SuccessProduct {
  const _$SuccessProductImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductState.successProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessProductImplCopyWith<_$SuccessProductImpl> get copyWith =>
      __$$SuccessProductImplCopyWithImpl<_$SuccessProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product>? data) successAllProducts,
    required TResult Function(Product product) successProduct,
    required TResult Function(String message) failure,
  }) {
    return successProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product>? data)? successAllProducts,
    TResult? Function(Product product)? successProduct,
    TResult? Function(String message)? failure,
  }) {
    return successProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product>? data)? successAllProducts,
    TResult Function(Product product)? successProduct,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successProduct != null) {
      return successProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAllProducts value) successAllProducts,
    required TResult Function(_SuccessProduct value) successProduct,
    required TResult Function(_Failure value) failure,
  }) {
    return successProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAllProducts value)? successAllProducts,
    TResult? Function(_SuccessProduct value)? successProduct,
    TResult? Function(_Failure value)? failure,
  }) {
    return successProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAllProducts value)? successAllProducts,
    TResult Function(_SuccessProduct value)? successProduct,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successProduct != null) {
      return successProduct(this);
    }
    return orElse();
  }
}

abstract class _SuccessProduct implements ProductState {
  const factory _SuccessProduct(final Product product) = _$SuccessProductImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$SuccessProductImplCopyWith<_$SuccessProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product>? data) successAllProducts,
    required TResult Function(Product product) successProduct,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product>? data)? successAllProducts,
    TResult? Function(Product product)? successProduct,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product>? data)? successAllProducts,
    TResult Function(Product product)? successProduct,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAllProducts value) successAllProducts,
    required TResult Function(_SuccessProduct value) successProduct,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAllProducts value)? successAllProducts,
    TResult? Function(_SuccessProduct value)? successProduct,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAllProducts value)? successAllProducts,
    TResult Function(_SuccessProduct value)? successProduct,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ProductState {
  const factory _Failure({required final String message}) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
