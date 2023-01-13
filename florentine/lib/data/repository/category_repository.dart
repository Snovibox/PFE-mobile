import 'package:woosignal/models/response/product_category.dart';
import 'package:woosignal/woosignal.dart';

abstract class CategoryRepository {
  Future<ProductCategory> getCategoryById(String id);
  Future<List<ProductCategory>> getAllCategorie();
}

class CategoryRepositoryImpl implements CategoryRepository {

  WooSignal woo = WooSignal.instance;

  CategoryRepositoryImpl(){}


  @override
  Future<List<ProductCategory>> getAllCategorie() async {
    try{
      List<ProductCategory> categories = await woo!.getProductCategories() ;
      return categories;
    } catch(e) {
      return [];
    }
  }

  @override
  Future<ProductCategory> getCategoryById(String id) async {
    List<ProductCategory> categories = await woo!.getProductCategories(search: id) ;
    return categories[0];
  }

}

class NetworkException implements Exception {}