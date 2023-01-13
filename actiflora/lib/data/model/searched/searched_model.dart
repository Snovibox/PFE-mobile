import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/category/category_model.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';

part 'searched_model.freezed.dart';

part 'searched_model.g.dart';

@freezed
class SearchedModel with _$SearchedModel {
  const SearchedModel._();
  @JsonSerializable(explicitToJson: true)
  factory SearchedModel({
    @Default([]) List<CategoryModel> Categories,
    @Default([]) List<ProductModel> Items,
    @Default(true) bool isActive,
  }) = _SearchedModel;

  @JsonSerializable(explicitToJson: true)
  factory SearchedModel.fromJson(Map<String, dynamic> json) => _$SearchedModelFromJson(json);
}