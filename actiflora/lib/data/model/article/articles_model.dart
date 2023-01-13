import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/articles_details/articles_details_model.dart';

part 'articles_model.freezed.dart';

part 'articles_model.g.dart';

@freezed
class ArticlesModel with _$ArticlesModel {
  @JsonSerializable(explicitToJson: true)
  const ArticlesModel._();

  @JsonSerializable(explicitToJson: true)
  factory ArticlesModel({
    @Default(0) int idActuality,
    @Default('2022-02-03') String date, // avadika DateTime
    @Default('https://picsum.photos/300?image=9') String picture,
    required List<ArticlesDetailsModel> act,
    @Default(true) bool isActive,
  }) = _ArticlesModel;

  @JsonSerializable(explicitToJson: true)
  factory ArticlesModel.fromJson(Map<String, dynamic> json) => _$ArticlesModelFromJson(json);

}