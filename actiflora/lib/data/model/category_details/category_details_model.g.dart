// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryDetailsModel _$$_CategoryDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryDetailsModel(
      id_category_details: json['id_category_details'] as int? ?? 0,
      categoryName: json['categoryName'] as String? ?? 'not defined',
      description: json['description'] as String? ?? 'not defined',
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CategoryDetailsModelToJson(
        _$_CategoryDetailsModel instance) =>
    <String, dynamic>{
      'id_category_details': instance.id_category_details,
      'categoryName': instance.categoryName,
      'description': instance.description,
      'isActive': instance.isActive,
    };
