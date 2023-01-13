// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searched_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchedModel _$$_SearchedModelFromJson(Map<String, dynamic> json) =>
    _$_SearchedModel(
      Categories: (json['Categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      Items: (json['Items'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_SearchedModelToJson(_$_SearchedModel instance) =>
    <String, dynamic>{
      'Categories': instance.Categories.map((e) => e.toJson()).toList(),
      'Items': instance.Items.map((e) => e.toJson()).toList(),
      'isActive': instance.isActive,
    };
