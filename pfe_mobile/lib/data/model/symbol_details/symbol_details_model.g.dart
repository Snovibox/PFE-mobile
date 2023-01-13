// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SymbolDetailsModel _$$_SymbolDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_SymbolDetailsModel(
      id_symbol_details: json['id_symbol_details'] as int,
      symbolName: json['symbolName'] as String,
      manual: json['manual'] as String,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_SymbolDetailsModelToJson(
        _$_SymbolDetailsModel instance) =>
    <String, dynamic>{
      'id_symbol_details': instance.id_symbol_details,
      'symbolName': instance.symbolName,
      'manual': instance.manual,
      'isActive': instance.isActive,
    };
