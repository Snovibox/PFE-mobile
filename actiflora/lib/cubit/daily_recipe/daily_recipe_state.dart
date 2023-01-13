part of 'daily_recipe_cubit.dart';

enum DailyRecipeStatus {loading, success, failure }

class DailyRecipeState extends Equatable {
  final DailyRecipeStatus status;
  final List<DailyRecipeModel> items;

  const DailyRecipeState._({
    this.status = DailyRecipeStatus.loading,
    this.items = const <DailyRecipeModel>[],
  });

  const DailyRecipeState.loading() : this._();

  const DailyRecipeState.success(List<DailyRecipeModel> items)
      : this._(status: DailyRecipeStatus.success, items: items);

  const DailyRecipeState.failure() : this._(status: DailyRecipeStatus.failure);

  @override
  List<Object> get props => [status, items];

}
