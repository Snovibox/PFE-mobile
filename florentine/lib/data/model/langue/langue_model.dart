/*
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pfe_mobile/data/model/articles_details/articles_details_model.dart';
import 'package:pfe_mobile/data/model/category_details/category_details_model.dart';
import 'package:pfe_mobile/data/model/certification_details/certification_details_model.dart';
import 'package:pfe_mobile/data/model/product_details/product_details_model.dart';
import 'package:pfe_mobile/data/model/symbol_details/symbol_details_model.dart';

part 'langue_model.freezed.dart';

part 'langue_model.g.dart';

@freezed
class LangueModel with _$LangueModel {
  @JsonSerializable(explicitToJson: true)
  const LangueModel._();
  @JsonSerializable(explicitToJson: true)
  factory LangueModel({
    @Default(0) int idLangue ,
    @Default('not defined') String name,
    required List<ProductDetailsModel> itm,
    required List<CategoryDetailsModel> cat,
    required List<CertificationDetailsModel> cert,
    required List<SymbolDetailsModel> symb,
    required List<ArticlesDetailsModel> act,
    @Default(true) bool isActive,
  }) = _LangueModel;

  @JsonSerializable(explicitToJson: true)
  factory LangueModel.fromJson(Map<String, dynamic> json) => _$LangueModelFromJson(json);

}
*/
