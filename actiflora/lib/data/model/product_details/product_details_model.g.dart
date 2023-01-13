// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailsModel _$$_ProductDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsModel(
      id_item_details: json['id_item_details'] as int? ?? 0,
      itemName: json['itemName'] as String? ?? 'not defined',
      origine: json['origine'] as String? ?? 'not defined',
      details: json['details'] as String? ?? 'not defined',
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ProductDetailsModelToJson(
        _$_ProductDetailsModel instance) =>
    <String, dynamic>{
      'id_item_details': instance.id_item_details,
      'itemName': instance.itemName,
      'origine': instance.origine,
      'details': instance.details,
      'isActive': instance.isActive,
    };
