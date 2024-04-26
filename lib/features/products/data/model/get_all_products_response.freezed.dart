// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllProductsResponse _$GetAllProductsResponseFromJson(
    Map<String, dynamic> json) {
  return _GetAllProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$GetAllProductsResponse {
  @JsonKey(includeFromJson: false)
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllProductsResponseCopyWith<GetAllProductsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllProductsResponseCopyWith<$Res> {
  factory $GetAllProductsResponseCopyWith(GetAllProductsResponse value,
          $Res Function(GetAllProductsResponse) then) =
      _$GetAllProductsResponseCopyWithImpl<$Res, GetAllProductsResponse>;
  @useResult
  $Res call({@JsonKey(includeFromJson: false) List<Product>? products});
}

/// @nodoc
class _$GetAllProductsResponseCopyWithImpl<$Res,
        $Val extends GetAllProductsResponse>
    implements $GetAllProductsResponseCopyWith<$Res> {
  _$GetAllProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllProductsResponseImplCopyWith<$Res>
    implements $GetAllProductsResponseCopyWith<$Res> {
  factory _$$GetAllProductsResponseImplCopyWith(
          _$GetAllProductsResponseImpl value,
          $Res Function(_$GetAllProductsResponseImpl) then) =
      __$$GetAllProductsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(includeFromJson: false) List<Product>? products});
}

/// @nodoc
class __$$GetAllProductsResponseImplCopyWithImpl<$Res>
    extends _$GetAllProductsResponseCopyWithImpl<$Res,
        _$GetAllProductsResponseImpl>
    implements _$$GetAllProductsResponseImplCopyWith<$Res> {
  __$$GetAllProductsResponseImplCopyWithImpl(
      _$GetAllProductsResponseImpl _value,
      $Res Function(_$GetAllProductsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$GetAllProductsResponseImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllProductsResponseImpl extends _GetAllProductsResponse {
  const _$GetAllProductsResponseImpl(
      {@JsonKey(includeFromJson: false) final List<Product>? products})
      : _products = products,
        super._();

  factory _$GetAllProductsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllProductsResponseImplFromJson(json);

  final List<Product>? _products;
  @override
  @JsonKey(includeFromJson: false)
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAllProductsResponse(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductsResponseImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllProductsResponseImplCopyWith<_$GetAllProductsResponseImpl>
      get copyWith => __$$GetAllProductsResponseImplCopyWithImpl<
          _$GetAllProductsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllProductsResponseImplToJson(
      this,
    );
  }
}

abstract class _GetAllProductsResponse extends GetAllProductsResponse {
  const factory _GetAllProductsResponse(
          {@JsonKey(includeFromJson: false) final List<Product>? products}) =
      _$GetAllProductsResponseImpl;
  const _GetAllProductsResponse._() : super._();

  factory _GetAllProductsResponse.fromJson(Map<String, dynamic> json) =
      _$GetAllProductsResponseImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false)
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$GetAllProductsResponseImplCopyWith<_$GetAllProductsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
