// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_product_by_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductParams {
  String? get categoryName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductParamsCopyWith<ProductParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductParamsCopyWith<$Res> {
  factory $ProductParamsCopyWith(
          ProductParams value, $Res Function(ProductParams) then) =
      _$ProductParamsCopyWithImpl<$Res, ProductParams>;
  @useResult
  $Res call({String? categoryName});
}

/// @nodoc
class _$ProductParamsCopyWithImpl<$Res, $Val extends ProductParams>
    implements $ProductParamsCopyWith<$Res> {
  _$ProductParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
  }) {
    return _then(_value.copyWith(
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductParamsImplCopyWith<$Res>
    implements $ProductParamsCopyWith<$Res> {
  factory _$$ProductParamsImplCopyWith(
          _$ProductParamsImpl value, $Res Function(_$ProductParamsImpl) then) =
      __$$ProductParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? categoryName});
}

/// @nodoc
class __$$ProductParamsImplCopyWithImpl<$Res>
    extends _$ProductParamsCopyWithImpl<$Res, _$ProductParamsImpl>
    implements _$$ProductParamsImplCopyWith<$Res> {
  __$$ProductParamsImplCopyWithImpl(
      _$ProductParamsImpl _value, $Res Function(_$ProductParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = freezed,
  }) {
    return _then(_$ProductParamsImpl(
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProductParamsImpl implements _ProductParams {
  const _$ProductParamsImpl({this.categoryName});

  @override
  final String? categoryName;

  @override
  String toString() {
    return 'ProductParams(categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductParamsImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductParamsImplCopyWith<_$ProductParamsImpl> get copyWith =>
      __$$ProductParamsImplCopyWithImpl<_$ProductParamsImpl>(this, _$identity);
}

abstract class _ProductParams implements ProductParams {
  const factory _ProductParams({final String? categoryName}) =
      _$ProductParamsImpl;

  @override
  String? get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$ProductParamsImplCopyWith<_$ProductParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
