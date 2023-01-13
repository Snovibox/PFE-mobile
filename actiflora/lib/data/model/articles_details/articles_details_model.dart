import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/article/articles_model.dart';
import 'package:pfe_mobile/data/model/langue/langue_model.dart';

part 'articles_details_model.freezed.dart';

part 'articles_details_model.g.dart';

@freezed
class ArticlesDetailsModel with _$ArticlesDetailsModel {
  @JsonSerializable(explicitToJson: true)
  const ArticlesDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  factory ArticlesDetailsModel({
    @Default(0) int id_actuality_details,
    @Default('not defined') String title,
    @Default('not defined') String content ,
    /*required LangueModel langue ,
    required ArticlesModel act,*/
    @Default(true) bool isActive,
  }) = _ArticlesDetailsModel;

  @JsonSerializable(explicitToJson: true)
  factory ArticlesDetailsModel.fromJson(Map<String, dynamic> json) => _$ArticlesDetailsModelFromJson(json);

}