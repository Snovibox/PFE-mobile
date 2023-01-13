// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articles_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticlesDetailsModel _$ArticlesDetailsModelFromJson(Map<String, dynamic> json) {
  return _ArticlesDetailsModel.fromJson(json);
}

/// @nodoc
class _$ArticlesDetailsModelTearOff {
  const _$ArticlesDetailsModelTearOff();

  _ArticlesDetailsModel call(
      {int id_actuality_details = 0,
      String title = 'not defined',
      String content = 'not defined',
      bool isActive = true}) {
    return _ArticlesDetailsModel(
      id_actuality_details: id_actuality_details,
      title: title,
      content: content,
      isActive: isActive,
    );
  }

  ArticlesDetailsModel fromJson(Map<String, Object?> json) {
    return ArticlesDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $ArticlesDetailsModel = _$ArticlesDetailsModelTearOff();

/// @nodoc
mixin _$ArticlesDetailsModel {
  int get id_actuality_details => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content =>
      throw _privateConstructorUsedError; /*required LangueModel langue ,
    required ArticlesModel act,*/
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticlesDetailsModelCopyWith<ArticlesDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticlesDetailsModelCopyWith<$Res> {
  factory $ArticlesDetailsModelCopyWith(ArticlesDetailsModel value,
          $Res Function(ArticlesDetailsModel) then) =
      _$ArticlesDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {int id_actuality_details, String title, String content, bool isActive});
}

/// @nodoc
class _$ArticlesDetailsModelCopyWithImpl<$Res>
    implements $ArticlesDetailsModelCopyWith<$Res> {
  _$ArticlesDetailsModelCopyWithImpl(this._value, this._then);

  final ArticlesDetailsModel _value;
  // ignore: unused_field
  final $Res Function(ArticlesDetailsModel) _then;

  @override
  $Res call({
    Object? id_actuality_details = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id_actuality_details: id_actuality_details == freezed
          ? _value.id_actuality_details
          : id_actuality_details // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ArticlesDetailsModelCopyWith<$Res>
    implements $ArticlesDetailsModelCopyWith<$Res> {
  factory _$ArticlesDetailsModelCopyWith(_ArticlesDetailsModel value,
          $Res Function(_ArticlesDetailsModel) then) =
      __$ArticlesDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id_actuality_details, String title, String content, bool isActive});
}

/// @nodoc
class __$ArticlesDetailsModelCopyWithImpl<$Res>
    extends _$ArticlesDetailsModelCopyWithImpl<$Res>
    implements _$ArticlesDetailsModelCopyWith<$Res> {
  __$ArticlesDetailsModelCopyWithImpl(
      _ArticlesDetailsModel _value, $Res Function(_ArticlesDetailsModel) _then)
      : super(_value, (v) => _then(v as _ArticlesDetailsModel));

  @override
  _ArticlesDetailsModel get _value => super._value as _ArticlesDetailsModel;

  @override
  $Res call({
    Object? id_actuality_details = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_ArticlesDetailsModel(
      id_actuality_details: id_actuality_details == freezed
          ? _value.id_actuality_details
          : id_actuality_details // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_ArticlesDetailsModel extends _ArticlesDetailsModel {
  _$_ArticlesDetailsModel(
      {this.id_actuality_details = 0,
      this.title = 'not defined',
      this.content = 'not defined',
      this.isActive = true})
      : super._();

  factory _$_ArticlesDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticlesDetailsModelFromJson(json);

  @JsonKey()
  @override
  final int id_actuality_details;
  @JsonKey()
  @override
  final String title;
  @JsonKey()
  @override
  final String content;
  @JsonKey()
  @override /*required LangueModel langue ,
    required ArticlesModel act,*/
  final bool isActive;

  @override
  String toString() {
    return 'ArticlesDetailsModel(id_actuality_details: $id_actuality_details, title: $title, content: $content, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticlesDetailsModel &&
            const DeepCollectionEquality()
                .equals(other.id_actuality_details, id_actuality_details) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id_actuality_details),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$ArticlesDetailsModelCopyWith<_ArticlesDetailsModel> get copyWith =>
      __$ArticlesDetailsModelCopyWithImpl<_ArticlesDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticlesDetailsModelToJson(this);
  }
}

abstract class _ArticlesDetailsModel extends ArticlesDetailsModel {
  factory _ArticlesDetailsModel(
      {int id_actuality_details,
      String title,
      String content,
      bool isActive}) = _$_ArticlesDetailsModel;
  _ArticlesDetailsModel._() : super._();

  factory _ArticlesDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ArticlesDetailsModel.fromJson;

  @override
  int get id_actuality_details;
  @override
  String get title;
  @override
  String get content;
  @override /*required LangueModel langue ,
    required ArticlesModel act,*/
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$ArticlesDetailsModelCopyWith<_ArticlesDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
