// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      idItem: json['idItem'] as int? ?? 0,
      qtt: (json['qtt'] as num?)?.toDouble() ?? 0.0,
      unite: json['unite'] as String? ?? 'not defined',
      pcb: json['pcb'] as int? ?? 0,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      symbols: (json['symbols'] as List<dynamic>)
          .map((e) => SymbolModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      certifications: (json['certifications'] as List<dynamic>)
          .map((e) => CertificationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dateCreate: json['dateCreate'] as String? ?? '2022-02-03',
      pic: json['pic'] as String? ?? 'https://picsum.photos/300?image=9',
      itm: (json['itm'] as List<dynamic>)
          .map((e) => ProductDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'idItem': instance.idItem,
      'qtt': instance.qtt,
      'unite': instance.unite,
      'pcb': instance.pcb,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'symbols': instance.symbols.map((e) => e.toJson()).toList(),
      'certifications': instance.certifications.map((e) => e.toJson()).toList(),
      'dateCreate': instance.dateCreate,
      'pic': instance.pic,
      'itm': instance.itm.map((e) => e.toJson()).toList(),
      'isActive': instance.isActive,
    };
