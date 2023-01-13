part of 'article_cubit.dart';

enum ArticleStatus {loading, success, failure }

class ArticleState extends Equatable {
  final ArticleStatus status;
  final List<ArticlesModel> items;

  const ArticleState._({
    this.status = ArticleStatus.loading,
    this.items = const <ArticlesModel>[],
  });

  const ArticleState.loading() : this._();

  const ArticleState.success(List<ArticlesModel> items)
      : this._(status: ArticleStatus.success, items: items);

  const ArticleState.failure() : this._(status: ArticleStatus.failure);

  @override
  List<Object> get props => [status, items];

}
