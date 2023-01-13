import 'package:dio/dio.dart';
import 'package:pfe_mobile/data/access/network_service.dart';
import 'package:pfe_mobile/data/model/searched/searched_model.dart';
import 'package:pfe_mobile/l10n/my_shared.dart';

import '../model/product/product_model.dart';

// my interface
abstract class ProductRepository {
  Future<ProductModel> getProductById(int id);
  Future<List<ProductModel>> getAll();
  Future<List<ProductModel>> getNewProduct();
  Future<List<ProductModel>> getProductbyCategoryId(int id);
  Future<SearchedModel> getItemsSearched(String key);
}


//my implemented class
class ProductRepositoryImpl implements ProductRepository {

  //----------------------------------------------------------------------------------- tested
  @override
  Future<List<ProductModel>> getAll() async{
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'item/findAll/'+idLangue.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    List ls =  rs.data;

    return ls.map((e)=> ProductModel.fromJson(e)).toList();
  }

  //----------------------------------------------------------------------------------- tested
  @override
  Future<List<ProductModel>> getAllPagination(int index, int nbPerPage) async{
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'item/findAll/'+idLangue.toString()+'/'+index.toString()+'/'+nbPerPage.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    List ls =  rs.data;

    return ls.map((e)=> ProductModel.fromJson(e)).toList();
  }


  //-----------------------------------------------------------------------------------
  @override
  Future<ProductModel> getProductById(int id) async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'item/find/'+idLangue.toString()+'/'+id.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    return ProductModel.fromJson(rs.data);

  }

  //-----------------------------------------------------------------------------------
  @override
  Future<List<ProductModel>> getNewProduct() async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'item/find/last/'+idLangue.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    List ls =  rs.data;

    return ls.map((e)=> ProductModel.fromJson(e)).toList();
  }

  //----------------------------------------------------------------------------------- tested
  @override
  Future<List<ProductModel>> getProductbyCategoryId(int id) async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'item/find/byCat/'+idLangue.toString()+'/'+id.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    List ls =  rs.data;

    return ls.map((e)=> ProductModel.fromJson(e)).toList();
  }

  //----------------------------------------------------------------------------------- tested // but the product model only // must create an serched cubit for handle the searche model // tsy mbola mi-prendre en compte ny langue
  @override
  Future<SearchedModel> getItemsSearched(String key) async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'search/'+idLangue.toString()+'/'+key,
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    return SearchedModel.fromJson(rs.data);
  }

}

class NetworkException implements Exception {}