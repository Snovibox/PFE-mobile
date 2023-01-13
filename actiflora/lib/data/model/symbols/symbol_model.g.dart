// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symbol_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SymbolModel _$$_SymbolModelFromJson(Map<String, dynamic> json) =>
    _$_SymbolModel(
      idSymbol: json['idSymbol'] as int,
      smbl: (json['smbl'] as List<dynamic>)
          .map((e) => SymbolDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ref: json['ref'] as String,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_SymbolModelToJson(_$_SymbolModel instance) =>
    <String, dynamic>{
      'idSymbol': instance.idSymbol,
      'smbl': instance.smbl.map((e) => e.toJson()).toList(),
      'ref': instance.ref,
      'isActive': instance.isActive,
    };
