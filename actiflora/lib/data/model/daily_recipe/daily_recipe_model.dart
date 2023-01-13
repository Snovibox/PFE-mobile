import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_recipe_model.freezed.dart';

part 'daily_recipe_model.g.dart';

@freezed
class DailyRecipeModel with _$DailyRecipeModel {
  const DailyRecipeModel._();
  factory DailyRecipeModel({
    required int id,
    @Default('') String image,
    required DateTime date,
    @Default(true) bool isActive,
  }) = _DailyRecipeModel;

  factory DailyRecipeModel.fromJson(Map<String, dynamic> json) => _$DailyRecipeModelFromJson(json);

}