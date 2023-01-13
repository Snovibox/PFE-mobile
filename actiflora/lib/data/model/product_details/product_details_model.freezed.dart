// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
class _$ProductDetailsModelTearOff {
  const _$ProductDetailsModelTearOff();

  _ProductDetailsModel call(
      {int id_item_details = 0,
      String itemName = 'not defined',
      String origine = 'not defined',
      String details = 'not defined',
      bool isActive = true}) {
    return _ProductDetailsModel(
      id_item_details: id_item_details,
      itemName: itemName,
      origine: origine,
      details: details,
      isActive: isActive,
    );
  }

  ProductDetailsModel fromJson(Map<String, Object?> json) {
    return ProductDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $ProductDetailsModel = _$ProductDetailsModelTearOff();

/// @nodoc
mixin _$ProductDetailsModel {
  int get id_item_details => throw _privateConstructorUsedError;
  String get itemName => throw _privateConstructorUsedError;
  String get origine => throw _privateConstructorUsedError;
  String get details =>
      throw _privateConstructorUsedError; /*required LangueModel langue,
    required ProductModel item,*/
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {int id_item_details,
      String itemName,
      String origine,
      String details,
      bool isActive});
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

  final ProductDetailsModel _value;
  // ignore: unused_field
  final $Res Function(ProductDetailsModel) _then;

  @override
  $Res call({
    Object? id_item_details = freezed,
    Object? itemName = freezed,
    Object? origine = freezed,
    Object? details = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id_item_details: id_item_details == freezed
          ? _value.id_item_details
          : id_item_details // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      origine: origine == freezed
          ? _value.origine
          : origine // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductDetailsModelCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$ProductDetailsModelCopyWith(_ProductDetailsModel value,
          $Res Function(_ProductDetailsModel) then) =
      __$ProductDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id_item_details,
      String itemName,
      String origine,
      String details,
      bool isActive});
}

/// @nodoc
class __$ProductDetailsModelCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res>
    implements _$ProductDetailsModelCopyWith<$Res> {
  __$ProductDetailsModelCopyWithImpl(
      _ProductDetailsModel _value, $Res Function(_ProductDetailsModel) _then)
      : super(_value, (v) => _then(v as _ProductDetailsModel));

  @override
  _ProductDetailsModel get _value => super._value as _ProductDetailsModel;

  @override
  $Res call({
    Object? id_item_details = freezed,
    Object? itemName = freezed,
    Object? origine = freezed,
    Object? details = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_ProductDetailsModel(
      id_item_details: id_item_details == freezed
          ? _value.id_item_details
          : id_item_details // ignore: cast_nullable_to_non_nullable
              as int,
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      origine: origine == freezed
          ? _value.origine
          : origine // ignore: cast_nullable_to_non_nullable
              as String,
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductDetailsModel extends _ProductDetailsModel {
  _$_ProductDetailsModel(
      {this.id_item_details = 0,
      this.itemName = 'not defined',
      this.origine = 'not defined',
      this.details = 'not defined',
      this.isActive = true})
      : super._();

  factory _$_ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsModelFromJson(json);

  @JsonKey()
  @override
  final int id_item_details;
  @JsonKey()
  @override
  final String itemName;
  @JsonKey()
  @override
  final String origine;
  @JsonKey()
  @override
  final String details;
  @JsonKey()
  @override /*required LangueModel langue,
    required ProductModel item,*/
  final bool isActive;

  @override
  String toString() {
    return 'ProductDetailsModel(id_item_details: $id_item_details, itemName: $itemName, origine: $origine, details: $details, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductDetailsModel &&
            const DeepCollectionEquality()
                .equals(other.id_item_details, id_item_details) &&
            const DeepCollectionEquality().equals(other.itemName, itemName) &&
            const DeepCollectionEquality().equals(other.origine, origine) &&
            const DeepCollectionEquality().equals(other.details, details) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id_item_details),
      const DeepCollectionEquality().hash(itemName),
      const DeepCollectionEquality().hash(origine),
      const DeepCollectionEquality().hash(details),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$ProductDetailsModelCopyWith<_ProductDetailsModel> get copyWith =>
      __$ProductDetailsModelCopyWithImpl<_ProductDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsModelToJson(this);
  }
}

abstract class _ProductDetailsModel extends ProductDetailsModel {
  factory _ProductDetailsModel(
      {int id_item_details,
      String itemName,
      String origine,
      String details,
      bool isActive}) = _$_ProductDetailsModel;
  _ProductDetailsModel._() : super._();

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsModel.fromJson;

  @override
  int get id_item_details;
  @override
  String get itemName;
  @override
  String get origine;
  @override
  String get details;
  @override /*required LangueModel langue,
    required ProductModel item,*/
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$ProductDetailsModelCopyWith<_ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
