part of 'product_cubit.dart';

enum ProductStatus {loading, success, failure }

class ProductState extends Equatable {
  final ProductStatus status;
  final List<Product> items;

  const ProductState._({
    this.status = ProductStatus.loading,
    this.items = const <Product>[],
  });

  const ProductState.loading() : this._();

  const ProductState.success(List<Product> items)
      : this._(status: ProductStatus.success, items: items);

  const ProductState.failure() : this._(status: ProductStatus.failure);

  @override
  List<Object> get props => [status, items];

}
