// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target
//
// part of 'symbol_model.dart';
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
// SymbolModel _$SymbolModelFromJson(Map<String, dynamic> json) {
//   return _SymbolModel.fromJson(json);
// }
//
// /// @nodoc
// class _$SymbolModelTearOff {
//   const _$SymbolModelTearOff();
//
//   _SymbolModel call(
//       {required int idSymbol,
//       required List<SymbolDetailsModel> smbl,
//       required String ref,
//       bool isActive = true}) {
//     return _SymbolModel(
//       idSymbol: idSymbol,
//       smbl: smbl,
//       ref: ref,
//       isActive: isActive,
//     );
//   }
//
//   SymbolModel fromJson(Map<String, Object?> json) {
//     return SymbolModel.fromJson(json);
//   }
// }
//
// /// @nodoc
// const $SymbolModel = _$SymbolModelTearOff();
//
// /// @nodoc
// mixin _$SymbolModel {
//   int get idSymbol => throw _privateConstructorUsedError;
//   List<SymbolDetailsModel> get smbl => throw _privateConstructorUsedError;
//   String get ref => throw _privateConstructorUsedError;
//   bool get isActive => throw _privateConstructorUsedError;
//
//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $SymbolModelCopyWith<SymbolModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// /// @nodoc
// abstract class $SymbolModelCopyWith<$Res> {
//   factory $SymbolModelCopyWith(
//           SymbolModel value, $Res Function(SymbolModel) then) =
//       _$SymbolModelCopyWithImpl<$Res>;
//   $Res call(
//       {int idSymbol, List<SymbolDetailsModel> smbl, String ref, bool isActive});
// }
//
// /// @nodoc
// class _$SymbolModelCopyWithImpl<$Res> implements $SymbolModelCopyWith<$Res> {
//   _$SymbolModelCopyWithImpl(this._value, this._then);
//
//   final SymbolModel _value;
//   // ignore: unused_field
//   final $Res Function(SymbolModel) _then;
//
//   @override
//   $Res call({
//     Object? idSymbol = freezed,
//     Object? smbl = freezed,
//     Object? ref = freezed,
//     Object? isActive = freezed,
//   }) {
//     return _then(_value.copyWith(
//       idSymbol: idSymbol == freezed
//           ? _value.idSymbol
//           : idSymbol // ignore: cast_nullable_to_non_nullable
//               as int,
//       smbl: smbl == freezed
//           ? _value.smbl
//           : smbl // ignore: cast_nullable_to_non_nullable
//               as List<SymbolDetailsModel>,
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
// abstract class _$SymbolModelCopyWith<$Res>
//     implements $SymbolModelCopyWith<$Res> {
//   factory _$SymbolModelCopyWith(
//           _SymbolModel value, $Res Function(_SymbolModel) then) =
//       __$SymbolModelCopyWithImpl<$Res>;
//   @override
//   $Res call(
//       {int idSymbol, List<SymbolDetailsModel> smbl, String ref, bool isActive});
// }
//
// /// @nodoc
// class __$SymbolModelCopyWithImpl<$Res> extends _$SymbolModelCopyWithImpl<$Res>
//     implements _$SymbolModelCopyWith<$Res> {
//   __$SymbolModelCopyWithImpl(
//       _SymbolModel _value, $Res Function(_SymbolModel) _then)
//       : super(_value, (v) => _then(v as _SymbolModel));
//
//   @override
//   _SymbolModel get _value => super._value as _SymbolModel;
//
//   @override
//   $Res call({
//     Object? idSymbol = freezed,
//     Object? smbl = freezed,
//     Object? ref = freezed,
//     Object? isActive = freezed,
//   }) {
//     return _then(_SymbolModel(
//       idSymbol: idSymbol == freezed
//           ? _value.idSymbol
//           : idSymbol // ignore: cast_nullable_to_non_nullable
//               as int,
//       smbl: smbl == freezed
//           ? _value.smbl
//           : smbl // ignore: cast_nullable_to_non_nullable
//               as List<SymbolDetailsModel>,
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
// class _$_SymbolModel extends _SymbolModel {
//   _$_SymbolModel(
//       {required this.idSymbol,
//       required this.smbl,
//       required this.ref,
//       this.isActive = true})
//       : super._();
//
//   factory _$_SymbolModel.fromJson(Map<String, dynamic> json) =>
//       _$$_SymbolModelFromJson(json);
//
//   @override
//   final int idSymbol;
//   @override
//   final List<SymbolDetailsModel> smbl;
//   @override
//   final String ref;
//   @JsonKey()
//   @override
//   final bool isActive;
//
//   @override
//   String toString() {
//     return 'SymbolModel(idSymbol: $idSymbol, smbl: $smbl, ref: $ref, isActive: $isActive)';
//   }
//
//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _SymbolModel &&
//             const DeepCollectionEquality().equals(other.idSymbol, idSymbol) &&
//             const DeepCollectionEquality().equals(other.smbl, smbl) &&
//             const DeepCollectionEquality().equals(other.ref, ref) &&
//             const DeepCollectionEquality().equals(other.isActive, isActive));
//   }
//
//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(idSymbol),
//       const DeepCollectionEquality().hash(smbl),
//       const DeepCollectionEquality().hash(ref),
//       const DeepCollectionEquality().hash(isActive));
//
//   @JsonKey(ignore: true)
//   @override
//   _$SymbolModelCopyWith<_SymbolModel> get copyWith =>
//       __$SymbolModelCopyWithImpl<_SymbolModel>(this, _$identity);
//
//   @override
//   Map<String, dynamic> toJson() {
//     return _$$_SymbolModelToJson(this);
//   }
// }
//
// abstract class _SymbolModel extends SymbolModel {
//   factory _SymbolModel(
//       {required int idSymbol,
//       required List<SymbolDetailsModel> smbl,
//       required String ref,
//       bool isActive}) = _$_SymbolModel;
//   _SymbolModel._() : super._();
//
//   factory _SymbolModel.fromJson(Map<String, dynamic> json) =
//       _$_SymbolModel.fromJson;
//
//   @override
//   int get idSymbol;
//   @override
//   List<SymbolDetailsModel> get smbl;
//   @override
//   String get ref;
//   @override
//   bool get isActive;
//   @override
//   @JsonKey(ignore: true)
//   _$SymbolModelCopyWith<_SymbolModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
