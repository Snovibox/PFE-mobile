// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
class _$CategoryModelTearOff {
  const _$CategoryModelTearOff();

  _CategoryModel call(
      {required int idCategory,
      required List<CategoryDetailsModel> cat,
      required String ref,
      bool isActive = true}) {
    return _CategoryModel(
      idCategory: idCategory,
      cat: cat,
      ref: ref,
      isActive: isActive,
    );
  }

  CategoryModel fromJson(Map<String, Object?> json) {
    return CategoryModel.fromJson(json);
  }
}

/// @nodoc
const $CategoryModel = _$CategoryModelTearOff();

/// @nodoc
mixin _$CategoryModel {
  int get idCategory => throw _privateConstructorUsedError;
  List<CategoryDetailsModel> get cat => throw _privateConstructorUsedError;
  String get ref => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res>;
  $Res call(
      {int idCategory,
      List<CategoryDetailsModel> cat,
      String ref,
      bool isActive});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  final CategoryModel _value;
  // ignore: unused_field
  final $Res Function(CategoryModel) _then;

  @override
  $Res call({
    Object? idCategory = freezed,
    Object? cat = freezed,
    Object? ref = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      idCategory: idCategory == freezed
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as int,
      cat: cat == freezed
          ? _value.cat
          : cat // ignore: cast_nullable_to_non_nullable
              as List<CategoryDetailsModel>,
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CategoryModelCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$CategoryModelCopyWith(
          _CategoryModel value, $Res Function(_CategoryModel) then) =
      __$CategoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idCategory,
      List<CategoryDetailsModel> cat,
      String ref,
      bool isActive});
}

/// @nodoc
class __$CategoryModelCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res>
    implements _$CategoryModelCopyWith<$Res> {
  __$CategoryModelCopyWithImpl(
      _CategoryModel _value, $Res Function(_CategoryModel) _then)
      : super(_value, (v) => _then(v as _CategoryModel));

  @override
  _CategoryModel get _value => super._value as _CategoryModel;

  @override
  $Res call({
    Object? idCategory = freezed,
    Object? cat = freezed,
    Object? ref = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_CategoryModel(
      idCategory: idCategory == freezed
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as int,
      cat: cat == freezed
          ? _value.cat
          : cat // ignore: cast_nullable_to_non_nullable
              as List<CategoryDetailsModel>,
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
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
class _$_CategoryModel extends _CategoryModel {
  _$_CategoryModel(
      {required this.idCategory,
      required this.cat,
      required this.ref,
      this.isActive = true})
      : super._();

  factory _$_CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryModelFromJson(json);

  @override
  final int idCategory;
  @override
  final List<CategoryDetailsModel> cat;
  @override
  final String ref;
  @JsonKey()
  @override
  final bool isActive;

  @override
  String toString() {
    return 'CategoryModel(idCategory: $idCategory, cat: $cat, ref: $ref, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryModel &&
            const DeepCollectionEquality()
                .equals(other.idCategory, idCategory) &&
            const DeepCollectionEquality().equals(other.cat, cat) &&
            const DeepCollectionEquality().equals(other.ref, ref) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idCategory),
      const DeepCollectionEquality().hash(cat),
      const DeepCollectionEquality().hash(ref),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      __$CategoryModelCopyWithImpl<_CategoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryModelToJson(this);
  }
}

abstract class _CategoryModel extends CategoryModel {
  factory _CategoryModel(
      {required int idCategory,
      required List<CategoryDetailsModel> cat,
      required String ref,
      bool isActive}) = _$_CategoryModel;
  _CategoryModel._() : super._();

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryModel.fromJson;

  @override
  int get idCategory;
  @override
  List<CategoryDetailsModel> get cat;
  @override
  String get ref;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$CategoryModelCopyWith<_CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
