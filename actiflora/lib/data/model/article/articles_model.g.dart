// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticlesModel _$$_ArticlesModelFromJson(Map<String, dynamic> json) =>
    _$_ArticlesModel(
      idActuality: json['idActuality'] as int? ?? 0,
      date: json['date'] as String? ?? '2022-02-03',
      picture:
          json['picture'] as String? ?? 'https://picsum.photos/300?image=9',
      act: (json['act'] as List<dynamic>?)
              ?.map((e) =>
                  ArticlesDetailsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isActive: json['isActive'] as bool? ?? true,
    );

Map<String, dynamic> _$$_ArticlesModelToJson(_$_ArticlesModel instance) =>
    <String, dynamic>{
      'idActuality': instance.idActuality,
      'date': instance.date,
      'picture': instance.picture,
      'act': instance.act.map((e) => e.toJson()).toList(),
      'isActive': instance.isActive,
    };
