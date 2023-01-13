import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/category/category_model.dart';
import 'package:pfe_mobile/data/model/langue/langue_model.dart';

part 'category_details_model.freezed.dart';

part 'category_details_model.g.dart';

@freezed
class CategoryDetailsModel with _$CategoryDetailsModel {
  @JsonSerializable(explicitToJson: true)
  const CategoryDetailsModel._();
  @JsonSerializable(explicitToJson: true)
  factory CategoryDetailsModel({
    @Default(0) int id_category_details,
    @Default('not defined') String categoryName,
    @Default('not defined') String description,
    /*required LangueModel langue,
    required CategoryModel cat,*/
    @Default(true) bool isActive,
  }) = _CategoryDetailsModel;

  @JsonSerializable(explicitToJson: true)
  factory CategoryDetailsModel.fromJson(Map<String, dynamic> json) => _$CategoryDetailsModelFromJson(json);

}