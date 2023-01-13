import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/articles/article_cubit.dart';
import 'package:pfe_mobile/data/model/article/articles_model.dart';
import 'package:pfe_mobile/data/repository/articles_repository.dart';
import 'package:pfe_mobile/presentation/widgets/message/error_image.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';

class ArticleDetailsScreen extends StatelessWidget {
  final ArticlesModel article;

  const ArticleDetailsScreen({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocProvider(
        create: (context) => ArticleCubit(repository: ArticlesRepositoryImpl())..getOneArticle(article.idActuality),
        child: BlocBuilder<ArticleCubit, ArticleState>(
          builder: (context, state) {
            return const ArticleDetailsState();
          }
        ),
      ),
    );
  }
}

class ArticleDetailsState extends StatelessWidget{
  const ArticleDetailsState({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final state = context.watch<ArticleCubit>().state;
    switch (state.status) {
      case ArticleStatus.failure:
        return const Center(child: Text('Oops something went wrong!'));
      case ArticleStatus.success:
        return ArticleDetaileScrenVieux(items: state.items);
      default:
        return const Center(child: LoadingScreen());
    }
  }
}

class ArticleDetaileScrenVieux extends StatelessWidget{
  final List<ArticlesModel> items;

  const ArticleDetaileScrenVieux({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ArticlesModel x = items[0];

    String error_none_title = 'Article';
    String error_none_content = '-';

    return Stack(
      children: [
        Positioned(
          top: 0,
          child: SizedBox(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              x.picture,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const ErrorImage();
              },
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
                if(loadingProgress == null ) {
                  return child;
                }
                return const LoadingImage();
              },
            )
          ),
        ),
        Positioned(
          top: 200,
          child: Container(
            padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
            height: MediaQuery.of(context).size.height-250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
              ),
            ),
            child: Column(
              children: [
                TextFormatWidget.fitFormatTitle(x.act.isEmpty?error_none_title:x.act[0].title, Theme.of(context).textTheme.headline3,15,true, 1),
                const SizedBox(height: 40,),
                TextFormatWidget.format(x.act.isEmpty?error_none_content:x.act[0].content, Theme.of(context).textTheme.bodyText2, 10, false),
              ],
            ),
          ),
        ),
        Positioned(
          top : 5,
          left : 5,
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.only(right: 2),
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }

}