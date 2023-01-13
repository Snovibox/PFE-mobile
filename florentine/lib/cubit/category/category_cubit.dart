import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:florentine/data/repository/category_repository.dart';
import 'package:woosignal/models/response/product_category.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepositoryImpl repository; 

  CategoryCubit(this.repository) : super(const CategoryState.loading());

  Future<void> getCategoryList() async {
    try{
      emit (const CategoryState.loading());
      final items = await repository.getAllCategorie();
      print(" eto o : " + items.length.toString());
      emit (CategoryState.success(items));
    } on Exception {
      emit (const CategoryState.failure());
    }
  }
}
