// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target
//
// part of 'symbol_details_model.dart';
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
// SymbolDetailsModel _$SymbolDetailsModelFromJson(Map<String, dynamic> json) {
//   return _SymbolDetailsModel.fromJson(json);
// }
//
// /// @nodoc
// class _$SymbolDetailsModelTearOff {
//   const _$SymbolDetailsModelTearOff();
//
//   _SymbolDetailsModel call(
//       {required int id_symbol_details,
//       required String symbolName,
//       required String manual,
//       bool isActive = true}) {
//     return _SymbolDetailsModel(
//       id_symbol_details: id_symbol_details,
//       symbolName: symbolName,
//       manual: manual,
//       isActive: isActive,
//     );
//   }
//
//   SymbolDetailsModel fromJson(Map<String, Object?> json) {
//     return SymbolDetailsModel.fromJson(json);
//   }
// }
//
// /// @nodoc
// const $SymbolDetailsModel = _$SymbolDetailsModelTearOff();
//
// /// @nodoc
// mixin _$SymbolDetailsModel {
//   int get id_symbol_details => throw _privateConstructorUsedError;
//   String get symbolName => throw _privateConstructorUsedError;
//   String get manual =>
//       throw _privateConstructorUsedError; /*required LangueModel langue,
//     required SymbolModel symbol,*/
//   bool get isActive => throw _privateConstructorUsedError;
//
//   Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
//   @JsonKey(ignore: true)
//   $SymbolDetailsModelCopyWith<SymbolDetailsModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
//
// /// @nodoc
// abstract class $SymbolDetailsModelCopyWith<$Res> {
//   factory $SymbolDetailsModelCopyWith(
//           SymbolDetailsModel value, $Res Function(SymbolDetailsModel) then) =
//       _$SymbolDetailsModelCopyWithImpl<$Res>;
//   $Res call(
//       {int id_symbol_details, String symbolName, String manual, bool isActive});
// }
//
// /// @nodoc
// class _$SymbolDetailsModelCopyWithImpl<$Res>
//     implements $SymbolDetailsModelCopyWith<$Res> {
//   _$SymbolDetailsModelCopyWithImpl(this._value, this._then);
//
//   final SymbolDetailsModel _value;
//   // ignore: unused_field
//   final $Res Function(SymbolDetailsModel) _then;
//
//   @override
//   $Res call({
//     Object? id_symbol_details = freezed,
//     Object? symbolName = freezed,
//     Object? manual = freezed,
//     Object? isActive = freezed,
//   }) {
//     return _then(_value.copyWith(
//       id_symbol_details: id_symbol_details == freezed
//           ? _value.id_symbol_details
//           : id_symbol_details // ignore: cast_nullable_to_non_nullable
//               as int,
//       symbolName: symbolName == freezed
//           ? _value.symbolName
//           : symbolName // ignore: cast_nullable_to_non_nullable
//               as String,
//       manual: manual == freezed
//           ? _value.manual
//           : manual // ignore: cast_nullable_to_non_nullable
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
// abstract class _$SymbolDetailsModelCopyWith<$Res>
//     implements $SymbolDetailsModelCopyWith<$Res> {
//   factory _$SymbolDetailsModelCopyWith(
//           _SymbolDetailsModel value, $Res Function(_SymbolDetailsModel) then) =
//       __$SymbolDetailsModelCopyWithImpl<$Res>;
//   @override
//   $Res call(
//       {int id_symbol_details, String symbolName, String manual, bool isActive});
// }
//
// /// @nodoc
// class __$SymbolDetailsModelCopyWithImpl<$Res>
//     extends _$SymbolDetailsModelCopyWithImpl<$Res>
//     implements _$SymbolDetailsModelCopyWith<$Res> {
//   __$SymbolDetailsModelCopyWithImpl(
//       _SymbolDetailsModel _value, $Res Function(_SymbolDetailsModel) _then)
//       : super(_value, (v) => _then(v as _SymbolDetailsModel));
//
//   @override
//   _SymbolDetailsModel get _value => super._value as _SymbolDetailsModel;
//
//   @override
//   $Res call({
//     Object? id_symbol_details = freezed,
//     Object? symbolName = freezed,
//     Object? manual = freezed,
//     Object? isActive = freezed,
//   }) {
//     return _then(_SymbolDetailsModel(
//       id_symbol_details: id_symbol_details == freezed
//           ? _value.id_symbol_details
//           : id_symbol_details // ignore: cast_nullable_to_non_nullable
//               as int,
//       symbolName: symbolName == freezed
//           ? _value.symbolName
//           : symbolName // ignore: cast_nullable_to_non_nullable
//               as String,
//       manual: manual == freezed
//           ? _value.manual
//           : manual // ignore: cast_nullable_to_non_nullable
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
// class _$_SymbolDetailsModel extends _SymbolDetailsModel {
//   _$_SymbolDetailsModel(
//       {required this.id_symbol_details,
//       required this.symbolName,
//       required this.manual,
//       this.isActive = true})
//       : super._();
//
//   factory _$_SymbolDetailsModel.fromJson(Map<String, dynamic> json) =>
//       _$$_SymbolDetailsModelFromJson(json);
//
//   @override
//   final int id_symbol_details;
//   @override
//   final String symbolName;
//   @override
//   final String manual;
//   @JsonKey()
//   @override /*required LangueModel langue,
//     required SymbolModel symbol,*/
//   final bool isActive;
//
//   @override
//   String toString() {
//     return 'SymbolDetailsModel(id_symbol_details: $id_symbol_details, symbolName: $symbolName, manual: $manual, isActive: $isActive)';
//   }
//
//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _SymbolDetailsModel &&
//             const DeepCollectionEquality()
//                 .equals(other.id_symbol_details, id_symbol_details) &&
//             const DeepCollectionEquality()
//                 .equals(other.symbolName, symbolName) &&
//             const DeepCollectionEquality().equals(other.manual, manual) &&
//             const DeepCollectionEquality().equals(other.isActive, isActive));
//   }
//
//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(id_symbol_details),
//       const DeepCollectionEquality().hash(symbolName),
//       const DeepCollectionEquality().hash(manual),
//       const DeepCollectionEquality().hash(isActive));
//
//   @JsonKey(ignore: true)
//   @override
//   _$SymbolDetailsModelCopyWith<_SymbolDetailsModel> get copyWith =>
//       __$SymbolDetailsModelCopyWithImpl<_SymbolDetailsModel>(this, _$identity);
//
//   @override
//   Map<String, dynamic> toJson() {
//     return _$$_SymbolDetailsModelToJson(this);
//   }
// }
//
// abstract class _SymbolDetailsModel extends SymbolDetailsModel {
//   factory _SymbolDetailsModel(
//       {required int id_symbol_details,
//       required String symbolName,
//       required String manual,
//       bool isActive}) = _$_SymbolDetailsModel;
//   _SymbolDetailsModel._() : super._();
//
//   factory _SymbolDetailsModel.fromJson(Map<String, dynamic> json) =
//       _$_SymbolDetailsModel.fromJson;
//
//   @override
//   int get id_symbol_details;
//   @override
//   String get symbolName;
//   @override
//   String get manual;
//   @override /*required LangueModel langue,
//     required SymbolModel symbol,*/
//   bool get isActive;
//   @override
//   @JsonKey(ignore: true)
//   _$SymbolDetailsModelCopyWith<_SymbolDetailsModel> get copyWith =>
//       throw _privateConstructorUsedError;
// }
