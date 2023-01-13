// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target
//
// part of 'certification_model.dart';
//
// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************
//
// T _$identity<T>(T value) => value;
//
// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');
//
// CertificationModel _$CertificationModelFromJson(Map<String, dynamic> json) {
//   return _CertificationModel.fromJson(json);
// }
//
// /// @nodoc
// class _$CertificationModelTearOff {
//   const _$CertificationModelTearOff();
//
//   _CertificationModel call(
//       {required int idCertification,
//       required List<CertificationDetailsModel> cert,
//       required String ref,
//       bool isActive = true}) {
//     return _CertificationModel(
//       idCertification: idCertification,
//       cert: cert,
//       ref: ref,
//       isActive: isActive,
//     );
//   }
//
//   CertificationModel fromJson(Map<String, Object?> json) {
//     return CertificationModel.fromJson(json);
//   }
// }
//
// /// @nodoc
// const $CertificationModel = _$CertificationModelTearOff();
//
// /// @nodoc
// mixin _$CertificationModel {
//   int get idCertification => throw _privateConstructorUsedError;
//   List<CertificationDetailsModel> get cert =>
//       throw _privateConstructorUsedError;
//   String get ref => throw _privateConstructorUsedError;
//   bool get isActive => throw _privateConstructorUsedError;
//
//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $CertificationModelCopyWith<CertificationModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// /// @nodoc
// abstract class $CertificationModelCopyWith<$Res> {
//   factory $CertificationModelCopyWith(
//           CertificationModel value, $Res Function(CertificationModel) then) =
//       _$CertificationModelCopyWithImpl<$Res>;
//   $Res call(
//       {int idCertification,
//       List<CertificationDetailsModel> cert,
//       String ref,
//       bool isActive});
// }
//
// /// @nodoc
// class _$CertificationModelCopyWithImpl<$Res>
//     implements $CertificationModelCopyWith<$Res> {
//   _$CertificationModelCopyWithImpl(this._value, this._then);
//
//   final CertificationModel _value;
//   // ignore: unused_field
//   final $Res Function(CertificationModel) _then;
//
//   @override
//   $Res call({
//     Object? idCertification = freezed,
//     Object? cert = freezed,
//     Object? ref = freezed,
//     Object? isActive = freezed,
//   }) {
//     return _then(_value.copyWith(
//       idCertification: idCertification == freezed
//           ? _value.idCertification
//           : idCertification // ignore: cast_nullable_to_non_nullable
//               as int,
//       cert: cert == freezed
//           ? _value.cert
//           : cert // ignore: cast_nullable_to_non_nullable
//               as List<CertificationDetailsModel>,
//       ref: ref == freezed
//           ? _value.ref
//           : ref // ignore: cast_nullable_to_non_nullable
//               as String,
//       isActive: isActive == freezed
//           ? _value.isActive
//           : isActive // ignore: cast_nullable_to_non_nullable
//               as bool,
//     ));
//   }
// }
//
// /// @nodoc
// abstract class _$CertificationModelCopyWith<$Res>
//     implements $CertificationModelCopyWith<$Res> {
//   factory _$CertificationModelCopyWith(
//           _CertificationModel value, $Res Function(_CertificationModel) then) =
//       __$CertificationModelCopyWithImpl<$Res>;
//   @override
//   $Res call(
//       {int idCertification,
//       List<CertificationDetailsModel> cert,
//       String ref,
//       bool isActive});
// }
//
// /// @nodoc
// class __$CertificationModelCopyWithImpl<$Res>
//     extends _$CertificationModelCopyWithImpl<$Res>
//     implements _$CertificationModelCopyWith<$Res> {
//   __$CertificationModelCopyWithImpl(
//       _CertificationModel _value, $Res Function(_CertificationModel) _then)
//       : super(_value, (v) => _then(v as _CertificationModel));
//
//   @override
//   _CertificationModel get _value => super._value as _CertificationModel;
//
//   @override
//   $Res call({
//     Object? idCertification = freezed,
//     Object? cert = freezed,
//     Object? ref = freezed,
//     Object? isActive = freezed,
//   }) {
//     return _then(_CertificationModel(
//       idCertification: idCertification == freezed
//           ? _value.idCertification
//           : idCertification // ignore: cast_nullable_to_non_nullable
//               as int,
//       cert: cert == freezed
//           ? _value.cert
//           : cert // ignore: cast_nullable_to_non_nullable
//               as List<CertificationDetailsModel>,
//       ref: ref == freezed
//           ? _value.ref
//           : ref // ignore: cast_nullable_to_non_nullable
//               as String,
//       isActive: isActive == freezed
//           ? _value.isActive
//           : isActive // ignore: cast_nullable_to_non_nullable
//               as bool,
//     ));
//   }
// }
//
// /// @nodoc
//
// @JsonSerializable(explicitToJson: true)
// class _$_CertificationModel extends _CertificationModel {
//   _$_CertificationModel(
//       {required this.idCertification,
//       required this.cert,
//       required this.ref,
//       this.isActive = true})
//       : super._();
//
//   factory _$_CertificationModel.fromJson(Map<String, dynamic> json) =>
//       _$$_CertificationModelFromJson(json);
//
//   @override
//   final int idCertification;
//   @override
//   final List<CertificationDetailsModel> cert;
//   @override
//   final String ref;
//   @JsonKey()
//   @override
//   final bool isActive;
//
//   @override
//   String toString() {
//     return 'CertificationModel(idCertification: $idCertification, cert: $cert, ref: $ref, isActive: $isActive)';
//   }
//
//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _CertificationModel &&
//             const DeepCollectionEquality()
//                 .equals(other.idCertification, idCertification) &&
//             const DeepCollectionEquality().equals(other.cert, cert) &&
//             const DeepCollectionEquality().equals(other.ref, ref) &&
//             const DeepCollectionEquality().equals(other.isActive, isActive));
//   }
//
//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(idCertification),
//       const DeepCollectionEquality().hash(cert),
//       const DeepCollectionEquality().hash(ref),
//       const DeepCollectionEquality().hash(isActive));
//
//   @JsonKey(ignore: true)
//   @override
//   _$CertificationModelCopyWith<_CertificationModel> get copyWith =>
//       __$CertificationModelCopyWithImpl<_CertificationModel>(this, _$identity);
//
//   @override
//   Map<String, dynamic> toJson() {
//     return _$$_CertificationModelToJson(this);
//   }
// }
//
// abstract class _CertificationModel extends CertificationModel {
//   factory _CertificationModel(
//       {required int idCertification,
//       required List<CertificationDetailsModel> cert,
//       required String ref,
//       bool isActive}) = _$_CertificationModel;
//   _CertificationModel._() : super._();
//
//   factory _CertificationModel.fromJson(Map<String, dynamic> json) =
//       _$_CertificationModel.fromJson;
//
//   @override
//   int get idCertification;
//   @override
//   List<CertificationDetailsModel> get cert;
//   @override
//   String get ref;
//   @override
//   bool get isActive;
//   @override
//   @JsonKey(ignore: true)
//   _$CertificationModelCopyWith<_CertificationModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
