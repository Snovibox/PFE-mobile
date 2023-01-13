import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepositoryImpl repository;

  ProductCubit({required this.repository}): super( const ProductState.loading());

  //---------------------------------------------------------------------------- tested  getAllPagination(int index, int nbPerPage)
  Future<void> getAllProduct() async {
    try {
      emit(const ProductState.loading());
      final items = await repository.getAll();
      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

  //---------------------------------------------------------------------------- tested
  Future<void> getAllProductPerPage(int index, int nbPerPage) async {
    try {
      emit(const ProductState.loading());
      final items = await repository.getAllPagination(index, nbPerPage);
      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

  //---------------------------------------------------------------------------- tested
  Future<void> getAllNewProduct() async {
    try {
      emit(const ProductState.loading());
      final items = await repository.getNewProduct();
      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

  //---------------------------------------------------------------------------- tested // mbola ilay product ihany aloha
  Future<void> getProductSearched(String key) async {
    try {
      emit(const ProductState.loading());
      final items = await repository.getItemsSearched(key);
      emit(ProductState.success(items.Items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

  //----------------------------------------------------------------------------
  Future<void> getProductbyId(int id) async {
    try {
      emit(const ProductState.loading());
      List<ProductModel> items = [];
      items.add(await repository.getProductById(id));
      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

  //----------------------------------------------------------------------------
  Future<void> getProductbyCategoryId(int catId) async {
    try {
      emit(const ProductState.loading());
      final items = await repository.getProductbyCategoryId(catId);
      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

}