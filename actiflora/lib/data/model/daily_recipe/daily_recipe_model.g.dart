// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_recipe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DailyRecipeModel _$$_DailyRecipeModelFromJson(Map<String, dynamic> json) =>
    _$_DailyRecipeModel(
      id: json['id'] as int,
      image: json['image'] as String? ?? '',
      date: DateTime.parse(json['date'] as String),
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_DailyRecipeModelToJson(_$_DailyRecipeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'date': instance.date.toIso8601String(),
      'isActive': instance.isActive,
    };
