import 'package:dio/dio.dart';
import 'package:pfe_mobile/data/access/network_service.dart';
import 'package:pfe_mobile/l10n/my_shared.dart';

import '../model/category/category_model.dart';

abstract class CategoryRepository {
  Future<CategoryModel> getCategoryById(String id);
  Future<List<CategoryModel>> getAllCategorie();
}

class CategoryRepositoryImpl implements CategoryRepository {

  //----------------------------------------------------------------------------
  @override
  Future<List<CategoryModel>> getAllCategorie() async{
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'cat/findAll/'+idLangue.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    List ls =  rs.data;

    print(ls);

    return ls.map((e)=> CategoryModel.fromJson(e)).toList();
  }

  @override
  Future<CategoryModel> getCategoryById(String id) async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'cat/find/'+id.toString()+'/'+idLangue.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    return CategoryModel.fromJson(rs.data);
  }
}

class NetworkException implements Exception {}