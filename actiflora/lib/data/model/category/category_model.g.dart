// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      idCategory: json['idCategory'] as int,
      cat: (json['cat'] as List<dynamic>)
          .map((e) => CategoryDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ref: json['ref'] as String,
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'idCategory': instance.idCategory,
      'cat': instance.cat.map((e) => e.toJson()).toList(),
      'ref': instance.ref,
      'isActive': instance.isActive,
    };
