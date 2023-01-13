// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticlesDetailsModel _$$_ArticlesDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ArticlesDetailsModel(
      id_actuality_details: json['id_actuality_details'] as int? ?? 0,
      title: json['title'] as String? ?? 'not defined',
      content: json['content'] as String? ?? 'not defined',
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ArticlesDetailsModelToJson(
        _$_ArticlesDetailsModel instance) =>
    <String, dynamic>{
      'id_actuality_details': instance.id_actuality_details,
      'title': instance.title,
      'content': instance.content,
      'isActive': instance.isActive,
    };
