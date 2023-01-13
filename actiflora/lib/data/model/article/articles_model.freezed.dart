// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articles_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticlesModel _$ArticlesModelFromJson(Map<String, dynamic> json) {
  return _ArticlesModel.fromJson(json);
}

/// @nodoc
class _$ArticlesModelTearOff {
  const _$ArticlesModelTearOff();

  _ArticlesModel call(
      {int idActuality = 0,
      String date = '2022-02-03',
      String picture = 'https://picsum.photos/300?image=9',
      List<ArticlesDetailsModel> act = const [],
      bool isActive = true}) {
    return _ArticlesModel(
      idActuality: idActuality,
      date: date,
      picture: picture,
      act: act,
      isActive: isActive,
    );
  }

  ArticlesModel fromJson(Map<String, Object?> json) {
    return ArticlesModel.fromJson(json);
  }
}

/// @nodoc
const $ArticlesModel = _$ArticlesModelTearOff();

/// @nodoc
mixin _$ArticlesModel {
  int get idActuality => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError; // avadika DateTime
  String get picture => throw _privateConstructorUsedError;
  List<ArticlesDetailsModel> get act => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlesModelCopyWith<ArticlesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesModelCopyWith<$Res> {
  factory $ArticlesModelCopyWith(
          ArticlesModel value, $Res Function(ArticlesModel) then) =
      _$ArticlesModelCopyWithImpl<$Res>;
  $Res call(
      {int idActuality,
      String date,
      String picture,
      List<ArticlesDetailsModel> act,
      bool isActive});
}

/// @nodoc
class _$ArticlesModelCopyWithImpl<$Res>
    implements $ArticlesModelCopyWith<$Res> {
  _$ArticlesModelCopyWithImpl(this._value, this._then);

  final ArticlesModel _value;
  // ignore: unused_field
  final $Res Function(ArticlesModel) _then;

  @override
  $Res call({
    Object? idActuality = freezed,
    Object? date = freezed,
    Object? picture = freezed,
    Object? act = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      idActuality: idActuality == freezed
          ? _value.idActuality
          : idActuality // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      act: act == freezed
          ? _value.act
          : act // ignore: cast_nullable_to_non_nullable
              as List<ArticlesDetailsModel>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ArticlesModelCopyWith<$Res>
    implements $ArticlesModelCopyWith<$Res> {
  factory _$ArticlesModelCopyWith(
          _ArticlesModel value, $Res Function(_ArticlesModel) then) =
      __$ArticlesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idActuality,
      String date,
      String picture,
      List<ArticlesDetailsModel> act,
      bool isActive});
}

/// @nodoc
class __$ArticlesModelCopyWithImpl<$Res>
    extends _$ArticlesModelCopyWithImpl<$Res>
    implements _$ArticlesModelCopyWith<$Res> {
  __$ArticlesModelCopyWithImpl(
      _ArticlesModel _value, $Res Function(_ArticlesModel) _then)
      : super(_value, (v) => _then(v as _ArticlesModel));

  @override
  _ArticlesModel get _value => super._value as _ArticlesModel;

  @override
  $Res call({
    Object? idActuality = freezed,
    Object? date = freezed,
    Object? picture = freezed,
    Object? act = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_ArticlesModel(
      idActuality: idActuality == freezed
          ? _value.idActuality
          : idActuality // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
      act: act == freezed
          ? _value.act
          : act // ignore: cast_nullable_to_non_nullable
              as List<ArticlesDetailsModel>,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ArticlesModel extends _ArticlesModel {
  _$_ArticlesModel(
      {this.idActuality = 0,
      this.date = '2022-02-03',
      this.picture = 'https://picsum.photos/300?image=9',
      this.act = const [],
      this.isActive = true})
      : super._();

  factory _$_ArticlesModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticlesModelFromJson(json);

  @JsonKey()
  @override
  final int idActuality;
  @JsonKey()
  @override
  final String date;
  @JsonKey()
  @override // avadika DateTime
  final String picture;
  @JsonKey()
  @override
  final List<ArticlesDetailsModel> act;
  @JsonKey()
  @override
  final bool isActive;

  @override
  String toString() {
    return 'ArticlesModel(idActuality: $idActuality, date: $date, picture: $picture, act: $act, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticlesModel &&
            const DeepCollectionEquality()
                .equals(other.idActuality, idActuality) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.act, act) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idActuality),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(act),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$ArticlesModelCopyWith<_ArticlesModel> get copyWith =>
      __$ArticlesModelCopyWithImpl<_ArticlesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticlesModelToJson(this);
  }
}

abstract class _ArticlesModel extends ArticlesModel {
  factory _ArticlesModel(
      {int idActuality,
      String date,
      String picture,
      List<ArticlesDetailsModel> act,
      bool isActive}) = _$_ArticlesModel;
  _ArticlesModel._() : super._();

  factory _ArticlesModel.fromJson(Map<String, dynamic> json) =
      _$_ArticlesModel.fromJson;

  @override
  int get idActuality;
  @override
  String get date;
  @override // avadika DateTime
  String get picture;
  @override
  List<ArticlesDetailsModel> get act;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$ArticlesModelCopyWith<_ArticlesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
