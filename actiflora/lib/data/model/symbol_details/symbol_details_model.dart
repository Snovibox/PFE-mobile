import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pfe_mobile/data/model/symbols/symbol_model.dart';

part 'symbol_details_model.freezed.dart';

part 'symbol_details_model.g.dart';

@freezed
class SymbolDetailsModel with _$SymbolDetailsModel {
  @JsonSerializable(explicitToJson: true)
  const SymbolDetailsModel._();

  @JsonSerializable(explicitToJson: true)
  factory SymbolDetailsModel({
    required int id_symbol_details,
    required String symbolName,
    required String manual,
    /*required LangueModel langue,
    required SymbolModel symbol,*/
    @Default(true) bool isActive,
  }) = _SymbolDetailsModel;

  @JsonSerializable(explicitToJson: true)
  factory SymbolDetailsModel.fromJson(Map<String, dynamic> json) => _$SymbolDetailsModelFromJson(json);

}