import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pfe_mobile/data/model/article/articles_model.dart';
import 'package:pfe_mobile/data/repository/articles_repository.dart';

part 'article_state.dart';

class ArticleCubit extends Cubit<ArticleState> {
  final ArticlesRepositoryImpl repository;

  ArticleCubit({required this.repository}): super( const ArticleState.loading());

  //----------------------------------------------------------------------------
  Future<void> fetchList() async {
    try {
      emit(const ArticleState.loading());
      final items = await repository.getLastArticle();
      emit(ArticleState.success(items));
    } on Exception {
      emit(const ArticleState.failure());
    }
  }

  //----------------------------------------------------------------------------
  Future<void> getAllPagination(int index, int nbPerPage) async {
    try {
      emit(const ArticleState.loading());
      final items = await repository.getAllArticleWithPagination(index, nbPerPage);
      emit(ArticleState.success(items));
    } on Exception {
      emit(const ArticleState.failure());
    }
  }

  //----------------------------------------------------------------------------
  Future<void> getOneArticle(int id) async {
    try {
      emit(const ArticleState.loading());
      List<ArticlesModel> items = [];
      items.add(await repository.getArticleById(id));
      emit(ArticleState.success(items));
    }on Exception {
      emit(const ArticleState.failure());
    }
  }
}