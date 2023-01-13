part of 'category_cubit.dart';

enum CategoryStatus {loading, success, failure }

class CategoryState extends Equatable {
  final CategoryStatus status;
  final List<CategoryModel> items;

  const CategoryState._({
    this.status = CategoryStatus.loading,
    this.items = const <CategoryModel>[],
  });

  const CategoryState.loading() : this._();

  const CategoryState.success(List<CategoryModel> items)
      : this._(status: CategoryStatus.success, items: items);

  const CategoryState.failure() : this._(status: CategoryStatus.failure);

  
  @override
  List<Object> get props => [status, items];

}
