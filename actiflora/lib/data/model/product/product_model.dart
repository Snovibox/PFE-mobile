import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/category/category_model.dart';
import 'package:pfe_mobile/data/model/certification/certification_model.dart';
import 'package:pfe_mobile/data/model/product_details/product_details_model.dart';
import 'package:pfe_mobile/data/model/symbols/symbol_model.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const ProductModel._();
  @JsonSerializable(explicitToJson: true)
  factory ProductModel({
    @Default(0) int idItem,
    @Default(0.0) double qtt,
    @Default('not defined') String unite,
    @Default(0) int pcb,
    required List<CategoryModel> categories,
    required List<SymbolModel> symbols,
    required List<CertificationModel> certifications,
    @Default('2022-02-03') String dateCreate,
    @Default('https://picsum.photos/300?image=9') String pic,
    required List<ProductDetailsModel> itm,
    @Default(true) bool isActive,
  }) = _ProductModel;

  @JsonSerializable(explicitToJson: true)
  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}