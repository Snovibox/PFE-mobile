// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDetailsModel _$CategoryDetailsModelFromJson(Map<String, dynamic> json) {
  return _CategoryDetailsModel.fromJson(json);
}

/// @nodoc
class _$CategoryDetailsModelTearOff {
  const _$CategoryDetailsModelTearOff();

  _CategoryDetailsModel call(
      {int id_category_details = 0,
      String categoryName = 'not defined',
      String description = 'not defined',
      bool isActive = true}) {
    return _CategoryDetailsModel(
      id_category_details: id_category_details,
      categoryName: categoryName,
      description: description,
      isActive: isActive,
    );
  }

  CategoryDetailsModel fromJson(Map<String, Object?> json) {
    return CategoryDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $CategoryDetailsModel = _$CategoryDetailsModelTearOff();

/// @nodoc
mixin _$CategoryDetailsModel {
  int get id_category_details => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; /*required LangueModel langue,
    required CategoryModel cat,*/
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDetailsModelCopyWith<CategoryDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDetailsModelCopyWith<$Res> {
  factory $CategoryDetailsModelCopyWith(CategoryDetailsModel value,
          $Res Function(CategoryDetailsModel) then) =
      _$CategoryDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {int id_category_details,
      String categoryName,
      String description,
      bool isActive});
}

/// @nodoc
class _$CategoryDetailsModelCopyWithImpl<$Res>
    implements $CategoryDetailsModelCopyWith<$Res> {
  _$CategoryDetailsModelCopyWithImpl(this._value, this._then);

  final CategoryDetailsModel _value;
  // ignore: unused_field
  final $Res Function(CategoryDetailsModel) _then;

  @override
  $Res call({
    Object? id_category_details = freezed,
    Object? categoryName = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id_category_details: id_category_details == freezed
          ? _value.id_category_details
          : id_category_details // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CategoryDetailsModelCopyWith<$Res>
    implements $CategoryDetailsModelCopyWith<$Res> {
  factory _$CategoryDetailsModelCopyWith(_CategoryDetailsModel value,
          $Res Function(_CategoryDetailsModel) then) =
      __$CategoryDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id_category_details,
      String categoryName,
      String description,
      bool isActive});
}

/// @nodoc
class __$CategoryDetailsModelCopyWithImpl<$Res>
    extends _$CategoryDetailsModelCopyWithImpl<$Res>
    implements _$CategoryDetailsModelCopyWith<$Res> {
  __$CategoryDetailsModelCopyWithImpl(
      _CategoryDetailsModel _value, $Res Function(_CategoryDetailsModel) _then)
      : super(_value, (v) => _then(v as _CategoryDetailsModel));

  @override
  _CategoryDetailsModel get _value => super._value as _CategoryDetailsModel;

  @override
  $Res call({
    Object? id_category_details = freezed,
    Object? categoryName = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_CategoryDetailsModel(
      id_category_details: id_category_details == freezed
          ? _value.id_category_details
          : id_category_details // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$_CategoryDetailsModel extends _CategoryDetailsModel {
  _$_CategoryDetailsModel(
      {this.id_category_details = 0,
      this.categoryName = 'not defined',
      this.description = 'not defined',
      this.isActive = true})
      : super._();

  factory _$_CategoryDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDetailsModelFromJson(json);

  @JsonKey()
  @override
  final int id_category_details;
  @JsonKey()
  @override
  final String categoryName;
  @JsonKey()
  @override
  final String description;
  @JsonKey()
  @override /*required LangueModel langue,
    required CategoryModel cat,*/
  final bool isActive;

  @override
  String toString() {
    return 'CategoryDetailsModel(id_category_details: $id_category_details, categoryName: $categoryName, description: $description, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryDetailsModel &&
            const DeepCollectionEquality()
                .equals(other.id_category_details, id_category_details) &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id_category_details),
      const DeepCollectionEquality().hash(categoryName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$CategoryDetailsModelCopyWith<_CategoryDetailsModel> get copyWith =>
      __$CategoryDetailsModelCopyWithImpl<_CategoryDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDetailsModelToJson(this);
  }
}

abstract class _CategoryDetailsModel extends CategoryDetailsModel {
  factory _CategoryDetailsModel(
      {int id_category_details,
      String categoryName,
      String description,
      bool isActive}) = _$_CategoryDetailsModel;
  _CategoryDetailsModel._() : super._();

  factory _CategoryDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryDetailsModel.fromJson;

  @override
  int get id_category_details;
  @override
  String get categoryName;
  @override
  String get description;
  @override /*required LangueModel langue,
    required CategoryModel cat,*/
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$CategoryDetailsModelCopyWith<_CategoryDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
