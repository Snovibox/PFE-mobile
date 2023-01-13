import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/category_details/category_details_model.dart';

part 'category_model.freezed.dart';

part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  @JsonSerializable(explicitToJson: true)
  const CategoryModel._();

  @JsonSerializable(explicitToJson: true)
  factory CategoryModel({
    required int idCategory,
    required List<CategoryDetailsModel> cat,
    required String ref,
    @Default(true) bool isActive,
  }) = _CategoryModel;

  @JsonSerializable(explicitToJson: true)
  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

}