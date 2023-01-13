import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pfe_mobile/data/model/category/category_model.dart';
import 'package:pfe_mobile/data/repository/category_repository.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepositoryImpl repository; 

  CategoryCubit(this.repository) : super(const CategoryState.loading());

  Future<void> getCategoryList() async {
    try{
      emit (const CategoryState.loading());
      final items = await repository.getAllCategorie();
      emit (CategoryState.success(items));
    } on Exception {
      emit (const CategoryState.failure());
    }
  }
}
