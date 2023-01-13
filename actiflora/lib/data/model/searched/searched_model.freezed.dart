// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'searched_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchedModel _$SearchedModelFromJson(Map<String, dynamic> json) {
  return _SearchedModel.fromJson(json);
}

/// @nodoc
class _$SearchedModelTearOff {
  const _$SearchedModelTearOff();

  _SearchedModel call(
      {List<CategoryModel> Categories = const [],
      List<ProductModel> Items = const [],
      bool isActive = true}) {
    return _SearchedModel(
      Categories: Categories,
      Items: Items,
      isActive: isActive,
    );
  }

  SearchedModel fromJson(Map<String, Object?> json) {
    return SearchedModel.fromJson(json);
  }
}

/// @nodoc
const $SearchedModel = _$SearchedModelTearOff();

/// @nodoc
mixin _$SearchedModel {
  List<CategoryModel> get Categories => throw _privateConstructorUsedError;
  List<ProductModel> get Items => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchedModelCopyWith<SearchedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchedModelCopyWith<$Res> {
  factory $SearchedModelCopyWith(
          SearchedModel value, $Res Function(SearchedModel) then) =
      _$SearchedModelCopyWithImpl<$Res>;
  $Res call(
      {List<CategoryModel> Categories,
      List<ProductModel> Items,
      bool isActive});
}

/// @nodoc
class _$SearchedModelCopyWithImpl<$Res>
    implements $SearchedModelCopyWith<$Res> {
  _$SearchedModelCopyWithImpl(this._value, this._then);

  final SearchedModel _value;
  // ignore: unused_field
  final $Res Function(SearchedModel) _then;

  @override
  $Res call({
    Object? Categories = freezed,
    Object? Items = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      Categories: Categories == freezed
          ? _value.Categories
          : Categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      Items: Items == freezed
          ? _value.Items
          : Items // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchedModelCopyWith<$Res>
    implements $SearchedModelCopyWith<$Res> {
  factory _$SearchedModelCopyWith(
          _SearchedModel value, $Res Function(_SearchedModel) then) =
      __$SearchedModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CategoryModel> Categories,
      List<ProductModel> Items,
      bool isActive});
}

/// @nodoc
class __$SearchedModelCopyWithImpl<$Res>
    extends _$SearchedModelCopyWithImpl<$Res>
    implements _$SearchedModelCopyWith<$Res> {
  __$SearchedModelCopyWithImpl(
      _SearchedModel _value, $Res Function(_SearchedModel) _then)
      : super(_value, (v) => _then(v as _SearchedModel));

  @override
  _SearchedModel get _value => super._value as _SearchedModel;

  @override
  $Res call({
    Object? Categories = freezed,
    Object? Items = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_SearchedModel(
      Categories: Categories == freezed
          ? _value.Categories
          : Categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      Items: Items == freezed
          ? _value.Items
          : Items // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SearchedModel extends _SearchedModel {
  _$_SearchedModel(
      {this.Categories = const [], this.Items = const [], this.isActive = true})
      : super._();

  factory _$_SearchedModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchedModelFromJson(json);

  @JsonKey()
  @override
  final List<CategoryModel> Categories;
  @JsonKey()
  @override
  final List<ProductModel> Items;
  @JsonKey()
  @override
  final bool isActive;

  @override
  String toString() {
    return 'SearchedModel(Categories: $Categories, Items: $Items, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchedModel &&
            const DeepCollectionEquality()
                .equals(other.Categories, Categories) &&
            const DeepCollectionEquality().equals(other.Items, Items) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(Categories),
      const DeepCollectionEquality().hash(Items),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$SearchedModelCopyWith<_SearchedModel> get copyWith =>
      __$SearchedModelCopyWithImpl<_SearchedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchedModelToJson(this);
  }
}

abstract class _SearchedModel extends SearchedModel {
  factory _SearchedModel(
      {List<CategoryModel> Categories,
      List<ProductModel> Items,
      bool isActive}) = _$_SearchedModel;
  _SearchedModel._() : super._();

  factory _SearchedModel.fromJson(Map<String, dynamic> json) =
      _$_SearchedModel.fromJson;

  @override
  List<CategoryModel> get Categories;
  @override
  List<ProductModel> get Items;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$SearchedModelCopyWith<_SearchedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
