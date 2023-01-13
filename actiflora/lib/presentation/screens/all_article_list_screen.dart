import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/articles/article_cubit.dart';
import 'package:pfe_mobile/data/model/article/articles_model.dart';
import 'package:pfe_mobile/data/repository/articles_repository.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';

import '../widgets/my_article_card.dart';

class AllArticleListScreen extends StatelessWidget{
  final int index;
  final int nbrPerPage;

  const AllArticleListScreen({Key? key, required this.index, required this.nbrPerPage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: myGreen,)
        ),
        //title: Text(category.cat.isEmpty?'not defined':category.cat[0].categoryName, style: TextStyle(color: myGreen),),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocProvider(
        create: (context) => ArticleCubit(repository: ArticlesRepositoryImpl())..getAllPagination(index, nbrPerPage),   //..getAllProductPerPage(index, nbrPerPage),
        child: BlocBuilder<ArticleCubit, ArticleState>(
            builder: (context, state) {
              return CatalogueArticleScreenState(index: index ,nbrPerPage: nbrPerPage,);
            }
        ),
      ),
    );
  }
}





class CatalogueArticleScreenState extends StatelessWidget{
  final int index;
  final int nbrPerPage;
  
  const CatalogueArticleScreenState({Key? key, required this.index, required this.nbrPerPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ArticleCubit>().state;

    switch (state.status) {
      case ArticleStatus.loading :
        return const Center(child: LoadingScreen());
      case ArticleStatus.success :
        return CatalogueArticleScreenView(items : state.items, index: index, nbrPerPage: nbrPerPage,);
      case ArticleStatus.failure :
        return const Text("an error occured");
      default: return const Center(child: LoadingScreen());
    }
  }

}

class CatalogueArticleScreenView extends StatelessWidget{
  final int index;
  final int nbrPerPage;

  final List<ArticlesModel> items;

  const CatalogueArticleScreenView({Key? key, required this.items, required this.index, required this.nbrPerPage,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            MyArticleCard(items : items),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed:(){
                    if(index >  0){
                      Navigator.of(context).pushNamed('/allArticlePerPage', arguments: [index-1,nbrPerPage]);
                    }
                  },
                  icon: Icon(Icons.arrow_back_ios, color: myGreen,),
                ),



                IconButton(
                  onPressed: (){
                    if(nbrPerPage ==  items.length){
                      Navigator.of(context).pushNamed('/allArticlePerPage', arguments: [index+1,nbrPerPage]);
                    }
                  },
                  icon: Icon(Icons.arrow_forward_ios, color: myGreen)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}