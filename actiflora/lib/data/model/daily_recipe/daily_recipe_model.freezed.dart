// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyRecipeModel _$DailyRecipeModelFromJson(Map<String, dynamic> json) {
  return _DailyRecipeModel.fromJson(json);
}

/// @nodoc
class _$DailyRecipeModelTearOff {
  const _$DailyRecipeModelTearOff();

  _DailyRecipeModel call(
      {required int id,
      String image = '',
      required DateTime date,
      bool isActive = true}) {
    return _DailyRecipeModel(
      id: id,
      image: image,
      date: date,
      isActive: isActive,
    );
  }

  DailyRecipeModel fromJson(Map<String, Object?> json) {
    return DailyRecipeModel.fromJson(json);
  }
}

/// @nodoc
const $DailyRecipeModel = _$DailyRecipeModelTearOff();

/// @nodoc
mixin _$DailyRecipeModel {
  int get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyRecipeModelCopyWith<DailyRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyRecipeModelCopyWith<$Res> {
  factory $DailyRecipeModelCopyWith(
          DailyRecipeModel value, $Res Function(DailyRecipeModel) then) =
      _$DailyRecipeModelCopyWithImpl<$Res>;
  $Res call({int id, String image, DateTime date, bool isActive});
}

/// @nodoc
class _$DailyRecipeModelCopyWithImpl<$Res>
    implements $DailyRecipeModelCopyWith<$Res> {
  _$DailyRecipeModelCopyWithImpl(this._value, this._then);

  final DailyRecipeModel _value;
  // ignore: unused_field
  final $Res Function(DailyRecipeModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DailyRecipeModelCopyWith<$Res>
    implements $DailyRecipeModelCopyWith<$Res> {
  factory _$DailyRecipeModelCopyWith(
          _DailyRecipeModel value, $Res Function(_DailyRecipeModel) then) =
      __$DailyRecipeModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String image, DateTime date, bool isActive});
}

/// @nodoc
class __$DailyRecipeModelCopyWithImpl<$Res>
    extends _$DailyRecipeModelCopyWithImpl<$Res>
    implements _$DailyRecipeModelCopyWith<$Res> {
  __$DailyRecipeModelCopyWithImpl(
      _DailyRecipeModel _value, $Res Function(_DailyRecipeModel) _then)
      : super(_value, (v) => _then(v as _DailyRecipeModel));

  @override
  _DailyRecipeModel get _value => super._value as _DailyRecipeModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? date = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_DailyRecipeModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DailyRecipeModel extends _DailyRecipeModel {
  _$_DailyRecipeModel(
      {required this.id,
      this.image = '',
      required this.date,
      this.isActive = true})
      : super._();

  factory _$_DailyRecipeModel.fromJson(Map<String, dynamic> json) =>
      _$$_DailyRecipeModelFromJson(json);

  @override
  final int id;
  @JsonKey()
  @override
  final String image;
  @override
  final DateTime date;
  @JsonKey()
  @override
  final bool isActive;

  @override
  String toString() {
    return 'DailyRecipeModel(id: $id, image: $image, date: $date, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyRecipeModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$DailyRecipeModelCopyWith<_DailyRecipeModel> get copyWith =>
      __$DailyRecipeModelCopyWithImpl<_DailyRecipeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyRecipeModelToJson(this);
  }
}

abstract class _DailyRecipeModel extends DailyRecipeModel {
  factory _DailyRecipeModel(
      {required int id,
      String image,
      required DateTime date,
      bool isActive}) = _$_DailyRecipeModel;
  _DailyRecipeModel._() : super._();

  factory _DailyRecipeModel.fromJson(Map<String, dynamic> json) =
      _$_DailyRecipeModel.fromJson;

  @override
  int get id;
  @override
  String get image;
  @override
  DateTime get date;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$DailyRecipeModelCopyWith<_DailyRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
