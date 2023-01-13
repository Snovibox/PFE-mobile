import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/articles/article_cubit.dart';
import 'package:pfe_mobile/cubit/daily_recipe/daily_recipe_cubit.dart';
import 'package:pfe_mobile/cubit/product/product_cubit.dart';
import 'package:pfe_mobile/data/model/article/articles_model.dart';
import 'package:pfe_mobile/data/model/daily_recipe/daily_recipe_model.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';
import 'package:pfe_mobile/data/repository/articles_repository.dart';
import 'package:pfe_mobile/data/repository/daily_recipe_repository.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/catalogue_product.dart';
import 'package:pfe_mobile/presentation/widgets/my_article_card.dart';
import 'package:pfe_mobile/presentation/widgets/my_carousel.dart';
import 'package:pfe_mobile/presentation/widgets/my_story.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';


// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int nbrPerPage = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body : MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=> ArticleCubit(repository: ArticlesRepositoryImpl())..fetchList()),
          BlocProvider(create: (context)=> DailyRecipeCubit(repository: DailyRecipeRepositoryImpl())..fetchList()),
          BlocProvider(create: (context)=> ProductCubit(repository: ProductRepositoryImpl())..getAllNewProduct())
        ],
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Image.asset(
                    'assets/PFE.png',
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: TextFormatWidget.fitFormatTitle(
                          AppLocalizations.of(context)!.home_recipe,
                          Theme.of(context).textTheme.headline2,
                          17,
                          true,
                          1
                      ),
                    ),
                    BlocBuilder<DailyRecipeCubit, DailyRecipeState>(
                      builder: (context, state){
                        return const DailyRecipeScreenStatus();
                      }
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormatWidget.fitFormatTitle(
                              AppLocalizations.of(context)!.home_popular,
                              Theme.of(context).textTheme.headline2,
                              17,
                              true,
                              1
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed('/allItemsPerPage', arguments: [0,nbrPerPage]);
                            },
                            child: Text(AppLocalizations.of(context)!.viewMore, style : TextStyle(color: myGreen))
                        )
                      ],
                    ),
                    BlocBuilder<ProductCubit, ProductState>(
                      builder: (context, state){
                        return const MostPopularScreeStatus();
                      }
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormatWidget.fitFormatTitle(
                              AppLocalizations.of(context)!.home_articles,
                              Theme.of(context).textTheme.headline2,
                              17,
                              false,
                              1
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed('/allArticlePerPage', arguments: [0,nbrPerPage]);
                            },
                            child: Text(AppLocalizations.of(context)!.viewMore, style : TextStyle(color: myGreen))
                        )
                      ],
                    ),
                    BlocBuilder<ArticleCubit, ArticleState>(
                      builder: (context, state){
                        return const NewsArticleScreenStatus();
                      }
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: TextFormatWidget.fitFormatTitle(
                              AppLocalizations.of(context)!.home_product,
                              Theme.of(context).textTheme.headline2,
                              17,
                              false,
                              1
                          ),
                        ),
                        TextButton(
                            onPressed: (){
                              Navigator.of(context).pushNamed('/allItemsPerPage', arguments: [0,nbrPerPage]);
                            },
                            child: Text(AppLocalizations.of(context)!.viewMore, style : TextStyle(color: myGreen))
                        )
                      ],
                    ),
                    BlocBuilder<ProductCubit, ProductState>(
                      builder: (context, state){
                        return const NewProductScreenStatus();
                      }
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

// Daily Recipe
class DailyRecipeScreenStatus extends StatelessWidget {
  const DailyRecipeScreenStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DailyRecipeCubit>().state;

    switch (state.status) {
      case DailyRecipeStatus.loading :
        return const Center(child: LoadingScreen());
      case DailyRecipeStatus.success :
        return DailyRecipeOnSuccess(items : state.items);
      case DailyRecipeStatus.failure : 
        return const Text("an error occured");
      default: return const Center(child: LoadingScreen());
    }
  }
}

class DailyRecipeOnSuccess extends StatefulWidget {
  final List<DailyRecipeModel> items;

  const DailyRecipeOnSuccess({Key? key, required this.items}) : super(key: key);

  @override
  State<DailyRecipeOnSuccess> createState() => _DailyRecipeOnSuccessState();
}

class _DailyRecipeOnSuccessState extends State<DailyRecipeOnSuccess> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 20),
      child: MyCarousel(items: widget.items,),
    );
  }
}

// Most popular
class MostPopularScreeStatus extends StatelessWidget {
  const MostPopularScreeStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductCubit>().state;

    switch (state.status) {
      case ProductStatus.loading :
        return const Center(child: LoadingScreen());
      case ProductStatus.success :
        return MostPopularScreenOnSuccess(items : state.items);
      case ProductStatus.failure : 
        return const Text("an error occured");
      default: return const Center(child: LoadingScreen());
    }
  }
}

class MostPopularScreenOnSuccess extends StatefulWidget {
  final List<ProductModel> items;

  const MostPopularScreenOnSuccess({Key? key, required this.items}) : super(key: key);

  @override
  State<MostPopularScreenOnSuccess> createState() => _MostPopularScreenOnSuccessState();
}

class _MostPopularScreenOnSuccessState extends State<MostPopularScreenOnSuccess> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: MyStory(items: widget.items,),
    );
  }
}

// New Article
class NewsArticleScreenStatus extends StatelessWidget {
  const NewsArticleScreenStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ArticleCubit>().state;

    switch (state.status) {
      case ArticleStatus.loading :
        return const Center(child: LoadingScreen());
      case ArticleStatus.success :
        return NewArticleScreenOnSuccess(items : state.items);
      case ArticleStatus.failure : 
        return const Text("an error occured");
      default: return const Center(child: LoadingScreen());
    }
  }
}

class NewArticleScreenOnSuccess extends StatefulWidget {
  final List<ArticlesModel> items;

  const NewArticleScreenOnSuccess({Key? key, required this.items}) : super(key: key); 
  @override
  State<NewArticleScreenOnSuccess> createState() => _NewArticleScreenOnSuccessState();
}

class _NewArticleScreenOnSuccessState extends State<NewArticleScreenOnSuccess> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 20),
      child: MyArticleCard(items: widget.items),
    );
  }
}

// New Product
class NewProductScreenStatus extends StatelessWidget {
  const NewProductScreenStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductCubit>().state;

    switch (state.status) {
      case ProductStatus.loading :
        return const Center(child: LoadingScreen());
      case ProductStatus.success :
        return NewProductScreenStatusOnSuccess(items : state.items);
      case ProductStatus.failure : 
        return const Text("an error occured");
      default: return const Center(child: LoadingScreen());
    }
  }
}

class NewProductScreenStatusOnSuccess extends StatefulWidget {
  final List<ProductModel> items;

  const NewProductScreenStatusOnSuccess({Key? key, required this.items}) : super(key: key); 
  @override
  State<NewProductScreenStatusOnSuccess> createState() => NewProductScreenStatusOnSuccesState();
}

class NewProductScreenStatusOnSuccesState extends State<NewProductScreenStatusOnSuccess> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top: 15),child: CatalogueProduct(items: widget.items, rowNumber: 2));
  }
}