import 'package:dio/dio.dart';
import 'package:pfe_mobile/data/access/network_service.dart';
import 'package:pfe_mobile/l10n/my_shared.dart';

import '../model/article/articles_model.dart';

abstract class ArticlesRepository {
  /// Throws [NetworkException]
  Future<ArticlesModel> getArticleById(int id);
  Future<List<ArticlesModel>> getAllArticle();
  Future<List<ArticlesModel>> getLastArticle();
  Future<List<ArticlesModel>> getAllArticleWithPagination(int index, int nbPerPage);
}

class ArticlesRepositoryImpl implements ArticlesRepository {

  // ---------------------------------------------------------------------------
  @override
  Future<List<ArticlesModel>> getAllArticle() async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'act/findAll/'+idLangue.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    List ls =  rs.data;

    return ls.map((e)=> ArticlesModel.fromJson(e)).toList();
  }

  // ---------------------------------------------------------------------------
  @override
  Future<List<ArticlesModel>> getLastArticle() async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'act/find/last/'+idLangue.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    List ls =  rs.data;

    return ls.map((e)=> ArticlesModel.fromJson(e)).toList();
  }

  // ---------------------------------------------------------------------------
  @override
  Future<List<ArticlesModel>> getAllArticleWithPagination(int index, int nbPerPage) async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'act/findAll/'+idLangue.toString()+'/'+index.toString()+'/'+nbPerPage.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})
    );

    List ls =  rs.data;

    return ls.map((e)=> ArticlesModel.fromJson(e)).toList();
  }

  // ---------------------------------------------------------------------------
  @override
  Future<ArticlesModel> getArticleById(int id) async {
    NetworkService ns = NetworkService();

    int idLangue = await ShareLanguage.getSharedLanguage();

    final rs = await ns.dio.get(
        ns.baseUrl+'act/find/'+idLangue.toString()+'/'+id.toString(),
        options:Options(headers: {'content-Type' : 'application/json'})

    );

    return ArticlesModel.fromJson(rs.data);
  }
}

class NetworkException implements Exception {}
