// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
class _$ProductModelTearOff {
  const _$ProductModelTearOff();

  _ProductModel call(
      {int idItem = 0,
      double qtt = 0.0,
      String unite = 'not defined',
      int pcb = 0,
      required List<CategoryModel> categories,
      required List<SymbolModel> symbols,
      required List<CertificationModel> certifications,
      String dateCreate = '2022-02-03',
      String pic = 'https://picsum.photos/300?image=9',
      required List<ProductDetailsModel> itm,
      bool isActive = true}) {
    return _ProductModel(
      idItem: idItem,
      qtt: qtt,
      unite: unite,
      pcb: pcb,
      categories: categories,
      symbols: symbols,
      certifications: certifications,
      dateCreate: dateCreate,
      pic: pic,
      itm: itm,
      isActive: isActive,
    );
  }

  ProductModel fromJson(Map<String, Object?> json) {
    return ProductModel.fromJson(json);
  }
}

/// @nodoc
const $ProductModel = _$ProductModelTearOff();

/// @nodoc
mixin _$ProductModel {
  int get idItem => throw _privateConstructorUsedError;
  double get qtt => throw _privateConstructorUsedError;
  String get unite => throw _privateConstructorUsedError;
  int get pcb => throw _privateConstructorUsedError;
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  List<SymbolModel> get symbols => throw _privateConstructorUsedError;
  List<CertificationModel> get certifications =>
      throw _privateConstructorUsedError;
  String get dateCreate => throw _privateConstructorUsedError;
  String get pic => throw _privateConstructorUsedError;
  List<ProductDetailsModel> get itm => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res>;
  $Res call(
      {int idItem,
      double qtt,
      String unite,
      int pcb,
      List<CategoryModel> categories,
      List<SymbolModel> symbols,
      List<CertificationModel> certifications,
      String dateCreate,
      String pic,
      List<ProductDetailsModel> itm,
      bool isActive});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res> implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  final ProductModel _value;
  // ignore: unused_field
  final $Res Function(ProductModel) _then;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? qtt = freezed,
    Object? unite = freezed,
    Object? pcb = freezed,
    Object? categories = freezed,
    Object? symbols = freezed,
    Object? certifications = freezed,
    Object? dateCreate = freezed,
    Object? pic = freezed,
    Object? itm = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      idItem: idItem == freezed
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as int,
      qtt: qtt == freezed
          ? _value.qtt
          : qtt // ignore: cast_nullable_to_non_nullable
              as double,
      unite: unite == freezed
          ? _value.unite
          : unite // ignore: cast_nullable_to_non_nullable
              as String,
      pcb: pcb == freezed
          ? _value.pcb
          : pcb // ignore: cast_nullable_to_non_nullable
              as int,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
      certifications: certifications == freezed
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<CertificationModel>,
      dateCreate: dateCreate == freezed
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String,
      pic: pic == freezed
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
      itm: itm == freezed
          ? _value.itm
          : itm // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailsModel>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(
          _ProductModel value, $Res Function(_ProductModel) then) =
      __$ProductModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idItem,
      double qtt,
      String unite,
      int pcb,
      List<CategoryModel> categories,
      List<SymbolModel> symbols,
      List<CertificationModel> certifications,
      String dateCreate,
      String pic,
      List<ProductDetailsModel> itm,
      bool isActive});
}

/// @nodoc
class __$ProductModelCopyWithImpl<$Res> extends _$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(
      _ProductModel _value, $Res Function(_ProductModel) _then)
      : super(_value, (v) => _then(v as _ProductModel));

  @override
  _ProductModel get _value => super._value as _ProductModel;

  @override
  $Res call({
    Object? idItem = freezed,
    Object? qtt = freezed,
    Object? unite = freezed,
    Object? pcb = freezed,
    Object? categories = freezed,
    Object? symbols = freezed,
    Object? certifications = freezed,
    Object? dateCreate = freezed,
    Object? pic = freezed,
    Object? itm = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_ProductModel(
      idItem: idItem == freezed
          ? _value.idItem
          : idItem // ignore: cast_nullable_to_non_nullable
              as int,
      qtt: qtt == freezed
          ? _value.qtt
          : qtt // ignore: cast_nullable_to_non_nullable
              as double,
      unite: unite == freezed
          ? _value.unite
          : unite // ignore: cast_nullable_to_non_nullable
              as String,
      pcb: pcb == freezed
          ? _value.pcb
          : pcb // ignore: cast_nullable_to_non_nullable
              as int,
      categories: categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<SymbolModel>,
      certifications: certifications == freezed
          ? _value.certifications
          : certifications // ignore: cast_nullable_to_non_nullable
              as List<CertificationModel>,
      dateCreate: dateCreate == freezed
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String,
      pic: pic == freezed
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String,
      itm: itm == freezed
          ? _value.itm
          : itm // ignore: cast_nullable_to_non_nullable
              as List<ProductDetailsModel>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ProductModel extends _ProductModel {
  _$_ProductModel(
      {this.idItem = 0,
      this.qtt = 0.0,
      this.unite = 'not defined',
      this.pcb = 0,
      required this.categories,
      required this.symbols,
      required this.certifications,
      this.dateCreate = '2022-02-03',
      this.pic = 'https://picsum.photos/300?image=9',
      required this.itm,
      this.isActive = true})
      : super._();

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @JsonKey()
  @override
  final int idItem;
  @JsonKey()
  @override
  final double qtt;
  @JsonKey()
  @override
  final String unite;
  @JsonKey()
  @override
  final int pcb;
  @override
  final List<CategoryModel> categories;
  @override
  final List<SymbolModel> symbols;
  @override
  final List<CertificationModel> certifications;
  @JsonKey()
  @override
  final String dateCreate;
  @JsonKey()
  @override
  final String pic;
  @override
  final List<ProductDetailsModel> itm;
  @JsonKey()
  @override
  final bool isActive;

  @override
  String toString() {
    return 'ProductModel(idItem: $idItem, qtt: $qtt, unite: $unite, pcb: $pcb, categories: $categories, symbols: $symbols, certifications: $certifications, dateCreate: $dateCreate, pic: $pic, itm: $itm, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductModel &&
            const DeepCollectionEquality().equals(other.idItem, idItem) &&
            const DeepCollectionEquality().equals(other.qtt, qtt) &&
            const DeepCollectionEquality().equals(other.unite, unite) &&
            const DeepCollectionEquality().equals(other.pcb, pcb) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            const DeepCollectionEquality().equals(other.symbols, symbols) &&
            const DeepCollectionEquality()
                .equals(other.certifications, certifications) &&
            const DeepCollectionEquality()
                .equals(other.dateCreate, dateCreate) &&
            const DeepCollectionEquality().equals(other.pic, pic) &&
            const DeepCollectionEquality().equals(other.itm, itm) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idItem),
      const DeepCollectionEquality().hash(qtt),
      const DeepCollectionEquality().hash(unite),
      const DeepCollectionEquality().hash(pcb),
      const DeepCollectionEquality().hash(categories),
      const DeepCollectionEquality().hash(symbols),
      const DeepCollectionEquality().hash(certifications),
      const DeepCollectionEquality().hash(dateCreate),
      const DeepCollectionEquality().hash(pic),
      const DeepCollectionEquality().hash(itm),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(this);
  }
}

abstract class _ProductModel extends ProductModel {
  factory _ProductModel(
      {int idItem,
      double qtt,
      String unite,
      int pcb,
      required List<CategoryModel> categories,
      required List<SymbolModel> symbols,
      required List<CertificationModel> certifications,
      String dateCreate,
      String pic,
      required List<ProductDetailsModel> itm,
      bool isActive}) = _$_ProductModel;
  _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  int get idItem;
  @override
  double get qtt;
  @override
  String get unite;
  @override
  int get pcb;
  @override
  List<CategoryModel> get categories;
  @override
  List<SymbolModel> get symbols;
  @override
  List<CertificationModel> get certifications;
  @override
  String get dateCreate;
  @override
  String get pic;
  @override
  List<ProductDetailsModel> get itm;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$ProductModelCopyWith<_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
