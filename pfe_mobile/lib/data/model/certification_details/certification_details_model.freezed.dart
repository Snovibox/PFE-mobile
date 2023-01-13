// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'certification_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CertificationDetailsModel _$CertificationDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _CertificationDetailsModel.fromJson(json);
}

/// @nodoc
class _$CertificationDetailsModelTearOff {
  const _$CertificationDetailsModelTearOff();

  _CertificationDetailsModel call(
      {required int id_certification_details,
      required String certificationName,
      required String description,
      bool isActive = true}) {
    return _CertificationDetailsModel(
      id_certification_details: id_certification_details,
      certificationName: certificationName,
      description: description,
      isActive: isActive,
    );
  }

  CertificationDetailsModel fromJson(Map<String, Object?> json) {
    return CertificationDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $CertificationDetailsModel = _$CertificationDetailsModelTearOff();

/// @nodoc
mixin _$CertificationDetailsModel {
  int get id_certification_details => throw _privateConstructorUsedError;
  String get certificationName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CertificationDetailsModelCopyWith<CertificationDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CertificationDetailsModelCopyWith<$Res> {
  factory $CertificationDetailsModelCopyWith(CertificationDetailsModel value,
          $Res Function(CertificationDetailsModel) then) =
      _$CertificationDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {int id_certification_details,
      String certificationName,
      String description,
      bool isActive});
}

/// @nodoc
class _$CertificationDetailsModelCopyWithImpl<$Res>
    implements $CertificationDetailsModelCopyWith<$Res> {
  _$CertificationDetailsModelCopyWithImpl(this._value, this._then);

  final CertificationDetailsModel _value;
  // ignore: unused_field
  final $Res Function(CertificationDetailsModel) _then;

  @override
  $Res call({
    Object? id_certification_details = freezed,
    Object? certificationName = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      id_certification_details: id_certification_details == freezed
          ? _value.id_certification_details
          : id_certification_details // ignore: cast_nullable_to_non_nullable
              as int,
      certificationName: certificationName == freezed
          ? _value.certificationName
          : certificationName // ignore: cast_nullable_to_non_nullable
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
abstract class _$CertificationDetailsModelCopyWith<$Res>
    implements $CertificationDetailsModelCopyWith<$Res> {
  factory _$CertificationDetailsModelCopyWith(_CertificationDetailsModel value,
          $Res Function(_CertificationDetailsModel) then) =
      __$CertificationDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id_certification_details,
      String certificationName,
      String description,
      bool isActive});
}

/// @nodoc
class __$CertificationDetailsModelCopyWithImpl<$Res>
    extends _$CertificationDetailsModelCopyWithImpl<$Res>
    implements _$CertificationDetailsModelCopyWith<$Res> {
  __$CertificationDetailsModelCopyWithImpl(_CertificationDetailsModel _value,
      $Res Function(_CertificationDetailsModel) _then)
      : super(_value, (v) => _then(v as _CertificationDetailsModel));

  @override
  _CertificationDetailsModel get _value =>
      super._value as _CertificationDetailsModel;

  @override
  $Res call({
    Object? id_certification_details = freezed,
    Object? certificationName = freezed,
    Object? description = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_CertificationDetailsModel(
      id_certification_details: id_certification_details == freezed
          ? _value.id_certification_details
          : id_certification_details // ignore: cast_nullable_to_non_nullable
              as int,
      certificationName: certificationName == freezed
          ? _value.certificationName
          : certificationName // ignore: cast_nullable_to_non_nullable
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
class _$_CertificationDetailsModel extends _CertificationDetailsModel {
  _$_CertificationDetailsModel(
      {required this.id_certification_details,
      required this.certificationName,
      required this.description,
      this.isActive = true})
      : super._();

  factory _$_CertificationDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CertificationDetailsModelFromJson(json);

  @override
  final int id_certification_details;
  @override
  final String certificationName;
  @override
  final String description;
  @JsonKey()
  @override
  final bool isActive;

  @override
  String toString() {
    return 'CertificationDetailsModel(id_certification_details: $id_certification_details, certificationName: $certificationName, description: $description, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CertificationDetailsModel &&
            const DeepCollectionEquality().equals(
                other.id_certification_details, id_certification_details) &&
            const DeepCollectionEquality()
                .equals(other.certificationName, certificationName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.isActive, isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id_certification_details),
      const DeepCollectionEquality().hash(certificationName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(isActive));

  @JsonKey(ignore: true)
  @override
  _$CertificationDetailsModelCopyWith<_CertificationDetailsModel>
      get copyWith =>
          __$CertificationDetailsModelCopyWithImpl<_CertificationDetailsModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CertificationDetailsModelToJson(this);
  }
}

abstract class _CertificationDetailsModel extends CertificationDetailsModel {
  factory _CertificationDetailsModel(
      {required int id_certification_details,
      required String certificationName,
      required String description,
      bool isActive}) = _$_CertificationDetailsModel;
  _CertificationDetailsModel._() : super._();

  factory _CertificationDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_CertificationDetailsModel.fromJson;

  @override
  int get id_certification_details;
  @override
  String get certificationName;
  @override
  String get description;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$CertificationDetailsModelCopyWith<_CertificationDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}
