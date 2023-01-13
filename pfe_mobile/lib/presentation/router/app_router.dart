import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/category/category_cubit.dart';
import 'package:pfe_mobile/cubit/product/product_cubit.dart';
import 'package:pfe_mobile/data/repository/category_repository.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/screens/account_screen.dart';
import 'package:pfe_mobile/presentation/screens/all_product.dart';
import 'package:pfe_mobile/presentation/screens/catalogue_category_screen.dart';
import 'package:pfe_mobile/presentation/screens/category_screen.dart';
import 'package:pfe_mobile/presentation/widgets/message/error_screen.dart';
import 'package:pfe_mobile/presentation/screens/product_details-screen.dart';
import 'package:pfe_mobile/presentation/screens/search_list.dart';
import 'package:pfe_mobile/presentation/screens/wishlist_screen.dart';

import 'package:woosignal/models/response/product_category.dart';
import 'package:woosignal/models/response/products.dart';

class AppRouter {
  Route onGeneratedRoute(RouteSettings routeSettings){
    final CategoryCubit _categoryCubit = CategoryCubit(CategoryRepositoryImpl());
    final ProductCubit _productCubit = ProductCubit(repository: ProductRepositoryImpl());

    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case '/' :
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _categoryCubit,
              child: const CategoryScreen(),
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
            value: _productCubit,
            child: const SearchScreen(),
          )
        );
      case '/favorite' :
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _productCubit,
            child: const WishListScreen(),
          )
        );
      case '/account' :
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _productCubit,
            child: const AccountScreen(),
          )
        );
      case '/productDetails' :
        if(args is Product){
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
        if(args is List){
          return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _productCubit,
              child: CatalogueCategoryScreen(category: args[0], tag: args[1], keySearch: args[2]),
            )
          );
        }
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _productCubit,
              child: const MyError(),
            )
        );
      // case '/allItemsPerPage' :
      //   if(args is List){
      //     return MaterialPageRoute(
      //         builder: (_) => BlocProvider.value(
      //           value: _productCubit,
      //           child: AllProductCatalogueScreen(index: args[0], nbrPerPage: args[1],),
      //         )
      //     );
      //   }
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider.value(
      //         value: _productCubit,
      //         child: const MyError(),
      //       )
      //   );

      default:
      return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _categoryCubit,
            child: const CategoryScreen(),
          )
        );
    }
  }
}