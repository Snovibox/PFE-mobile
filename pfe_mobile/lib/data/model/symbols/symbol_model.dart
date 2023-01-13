import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/symbol_details/symbol_details_model.dart';

part 'symbol_model.freezed.dart';

part 'symbol_model.g.dart';

@freezed
class SymbolModel with _$SymbolModel {
  @JsonSerializable(explicitToJson: true)
  const SymbolModel._();

  @JsonSerializable(explicitToJson: true)
  factory SymbolModel({
    required int idSymbol,
    required List<SymbolDetailsModel> smbl,
    required String ref,
    @Default(true) bool isActive,
  }) = _SymbolModel;

  @JsonSerializable(explicitToJson: true)
  factory SymbolModel.fromJson(Map<String, dynamic> json) => _$SymbolModelFromJson(json);

}