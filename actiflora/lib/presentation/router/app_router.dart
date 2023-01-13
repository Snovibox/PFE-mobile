import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/articles/article_cubit.dart';
import 'package:pfe_mobile/cubit/category/category_cubit.dart';
import 'package:pfe_mobile/cubit/daily_recipe/daily_recipe_cubit.dart';
import 'package:pfe_mobile/cubit/product/product_cubit.dart';
import 'package:pfe_mobile/data/model/article/articles_model.dart';
import 'package:pfe_mobile/data/model/category/category_model.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';
import 'package:pfe_mobile/data/repository/articles_repository.dart';
import 'package:pfe_mobile/data/repository/category_repository.dart';
import 'package:pfe_mobile/data/repository/daily_recipe_repository.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/screens/account_screen.dart';
import 'package:pfe_mobile/presentation/screens/all_article_list_screen.dart';
import 'package:pfe_mobile/presentation/screens/all_product.dart';
import 'package:pfe_mobile/presentation/screens/article_details_screen.dart';
import 'package:pfe_mobile/presentation/screens/catalogue_category_screen.dart';
import 'package:pfe_mobile/presentation/screens/category_screen.dart';
import 'package:pfe_mobile/presentation/widgets/message/error_screen.dart';
import 'package:pfe_mobile/presentation/screens/home_screen.dart';
import 'package:pfe_mobile/presentation/screens/product_details-screen.dart';
import 'package:pfe_mobile/presentation/screens/search_list.dart';
import 'package:pfe_mobile/presentation/screens/wishlist_screen.dart';

class AppRouter {
  Route onGeneratedRoute(RouteSettings routeSettings){
    final CategoryCubit _categoryCubit = CategoryCubit(CategoryRepositoryImpl());
    final DailyRecipeCubit _dayliRecipeCubit = DailyRecipeCubit(repository: DailyRecipeRepositoryImpl());
    final ArticleCubit _articleCubit = ArticleCubit(repository: ArticlesRepositoryImpl()); 
    final ProductCubit _productCubit = ProductCubit(repository: ProductRepositoryImpl());

    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case '/' :
        return MaterialPageRoute(
          /* builder: (_) => BlocProvider.value(
            value: _articleCubit,
            child: HomeScreen(),
          ) */
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: _dayliRecipeCubit),
              BlocProvider.value(value: _articleCubit),
              BlocProvider.value(value: _productCubit),
            ], 
            child: HomeScreen()
          )
        );
      case '/category' :
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _categoryCubit,
            child: const CategoryScreen(),
          )
        );
      case '/search' :
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _articleCubit,
            child: const SearchScreen(),
          )
        );
      case '/favorite' :
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _articleCubit,
            child: const WishListScreen(),
          )
        );
      case '/account' :
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _articleCubit,
            child: const AccountScreen(),
          )
        );
      case '/articleDetails' :
        if(args is ArticlesModel){
          return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: _articleCubit,
                child: ArticleDetailsScreen(article: args,),
              )
          );
        }
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _articleCubit,
              child: const MyError(),
            )
        );
      case '/productDetails' :
        if(args is ProductModel){
          return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: _productCubit,
                child: ProductDetailsScreen(product: args,),
              )
          );
        }
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _productCubit,
              child: const MyError(),
            )
        );
      case '/catalogueByCategory' :
        if(args is CategoryModel){
          return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: _productCubit,
                child: CatalogueCategoryScreen(category: args,),
              )
          );
        }
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _productCubit,
              child: const MyError(),
            )
        );
      case '/allItemsPerPage' :
        if(args is List){
          return MaterialPageRoute(
              builder: (_) => BlocProvider.value(
                value: _productCubit,
                child: AllProductCatalogueScreen(index: args[0], nbrPerPage: args[1],),
              )
          );
        }
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _productCubit,
              child: const MyError(),
            )
        );
      case '/allArticlePerPage' :
        if(args is List){
          return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _articleCubit,
              child: AllArticleListScreen(index: args[0], nbrPerPage: args[1],),
            )
          );
        }
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _productCubit,
              child: const MyError(),
            )
        );

      default:
      return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _articleCubit,
            child: HomeScreen(),
          )
        );
    }
  }
}