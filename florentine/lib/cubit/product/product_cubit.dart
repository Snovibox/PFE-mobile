import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:florentine/data/repository/product_repository.dart';
import 'package:woosignal/models/response/product_category.dart';
import 'package:woosignal/models/response/product_tag.dart';
import 'package:woosignal/models/response/products.dart';

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
      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

  //---------------------------------------------------------------------------- tested // mbola ilay product ihany aloha
  Future<void> getProductSearchedFiltre(ProductCategory cat, ProductTag tag, String key) async {
    try {
      emit(const ProductState.loading());
      final items = await repository.getItemsSearchedByCategoryAndTags(cat, tag, key);

      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

  //----------------------------------------------------------------------------
  Future<void> getProductbyId(int id) async {
    try {
      emit(const ProductState.loading());
      List<Product> items = [];
      Product? product = await repository.getProductById(id);
      if(product==null){
        emit(const ProductState.failure());
      }
      items.add(product!);
      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

  //----------------------------------------------------------------------------
  Future<void> getProductbyCategoryName(String catname) async {
    try {
      emit(const ProductState.loading());
      final items = await repository.getProductbyCategoryName(catname);
      emit(ProductState.success(items));
    } on Exception {
      emit(const ProductState.failure());
    }
  }

}


