import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/langue/langue_model.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';

part 'product_details_model.freezed.dart';

part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  @JsonSerializable(explicitToJson: true)
  const ProductDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  factory ProductDetailsModel({
    @Default(0) int id_item_details,
    @Default('not defined') String itemName,
    @Default('not defined') String origine,
    @Default('not defined') String details,
    /*required LangueModel langue,
    required ProductModel item,*/
    @Default(true) bool isActive,
  }) = _ProductDetailsModel;

  @JsonSerializable(explicitToJson: true)
  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => _$ProductDetailsModelFromJson(json);

}