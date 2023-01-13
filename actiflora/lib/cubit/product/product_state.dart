part of 'product_cubit.dart';

enum ProductStatus {loading, success, failure }

class ProductState extends Equatable {
  final ProductStatus status;
  final List<ProductModel> items;

  const ProductState._({
    this.status = ProductStatus.loading,
    this.items = const <ProductModel>[],
  });

  const ProductState.loading() : this._();

  const ProductState.success(List<ProductModel> items)
      : this._(status: ProductStatus.success, items: items);

  const ProductState.failure() : this._(status: ProductStatus.failure);

  @override
  List<Object> get props => [status, items];

}
