part of 'category_cubit.dart';

enum CategoryStatus {loading, success, failure }

class CategoryState extends Equatable {
  final CategoryStatus status;
  final List<ProductCategory> items;

  const CategoryState._({
    this.status = CategoryStatus.loading,
    this.items = const <ProductCategory>[],
  });

  const CategoryState.loading() : this._();

  const CategoryState.success(List<ProductCategory> items)
      : this._(status: CategoryStatus.success, items: items);

  const CategoryState.failure() : this._(status: CategoryStatus.failure);

  
  @override
  List<Object> get props => [status, items];

}



// <iframe width="1280" height="720" src="https://www.youtube.com/embed/Kb1L6Qd0QTE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
