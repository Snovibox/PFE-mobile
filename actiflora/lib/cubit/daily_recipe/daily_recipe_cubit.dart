import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pfe_mobile/data/model/daily_recipe/daily_recipe_model.dart';
import 'package:pfe_mobile/data/repository/daily_recipe_repository.dart';

part 'daily_recipe_state.dart';

class DailyRecipeCubit extends Cubit<DailyRecipeState> {
  final DailyRecipeRepositoryImpl repository;

  DailyRecipeCubit({required this.repository}): super( const DailyRecipeState.loading());

  Future<void> fetchList() async {
    try {
      emit(const DailyRecipeState.loading());
      //await Future.delayed(const Duration(seconds: 2));
      final items = await repository.getDdailyRecipe();
      emit(DailyRecipeState.success(items));
    } on Exception {
      emit(const DailyRecipeState.failure());
    }
  }
}