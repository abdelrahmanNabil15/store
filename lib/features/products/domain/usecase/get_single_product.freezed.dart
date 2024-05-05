// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_single_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleProductParams {
  int? get productId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleProductParamsCopyWith<SingleProductParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleProductParamsCopyWith<$Res> {
  factory $SingleProductParamsCopyWith(
          SingleProductParams value, $Res Function(SingleProductParams) then) =
      _$SingleProductParamsCopyWithImpl<$Res, SingleProductParams>;
  @useResult
  $Res call({int? productId});
}

/// @nodoc
class _$SingleProductParamsCopyWithImpl<$Res, $Val extends SingleProductParams>
    implements $SingleProductParamsCopyWith<$Res> {
  _$SingleProductParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleProductParamsImplCopyWith<$Res>
    implements $SingleProductParamsCopyWith<$Res> {
  factory _$$SingleProductParamsImplCopyWith(_$SingleProductParamsImpl value,
          $Res Function(_$SingleProductParamsImpl) then) =
      __$$SingleProductParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? productId});
}

/// @nodoc
class __$$SingleProductParamsImplCopyWithImpl<$Res>
    extends _$SingleProductParamsCopyWithImpl<$Res, _$SingleProductParamsImpl>
    implements _$$SingleProductParamsImplCopyWith<$Res> {
  __$$SingleProductParamsImplCopyWithImpl(_$SingleProductParamsImpl _value,
      $Res Function(_$SingleProductParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
  }) {
    return _then(_$SingleProductParamsImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SingleProductParamsImpl implements _SingleProductParams {
  const _$SingleProductParamsImpl({this.productId});

  @override
  final int? productId;

  @override
  String toString() {
    return 'SingleProductParams(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleProductParamsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleProductParamsImplCopyWith<_$SingleProductParamsImpl> get copyWith =>
      __$$SingleProductParamsImplCopyWithImpl<_$SingleProductParamsImpl>(
          this, _$identity);
}

abstract class _SingleProductParams implements SingleProductParams {
  const factory _SingleProductParams({final int? productId}) =
      _$SingleProductParamsImpl;

  @override
  int? get productId;
  @override
  @JsonKey(ignore: true)
  _$$SingleProductParamsImplCopyWith<_$SingleProductParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
