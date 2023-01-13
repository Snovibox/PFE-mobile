import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:florentine/cubit/category/category_cubit.dart';
import 'package:florentine/cubit/product/product_cubit.dart';
import 'package:florentine/data/repository/category_repository.dart';
import 'package:florentine/data/repository/product_repository.dart';
import 'package:florentine/presentation/screens/account_screen.dart';
// import 'package:florentine/presentation/screens/all_product.dart';
import 'package:florentine/presentation/screens/catalogue_category_screen.dart';
// import 'package:florentine/presentation/screens/category_screen.dart';
import 'package:florentine/presentation/widgets/message/error_screen.dart';
import 'package:florentine/presentation/screens/product_details-screen.dart';
import 'package:florentine/presentation/screens/search_list.dart';
import 'package:florentine/presentation/screens/wishlist_screen.dart';

import 'package:woosignal/models/response/product_category.dart';
import 'package:woosignal/models/response/product_tag.dart';
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
              //child: const CategoryScreen(),
              child: CatalogueCategoryScreen(category: ProductCategory(id: 46, name: 'Epices') , tag: ProductTag(id: -1, name: "toutes") , keySearch: ''),
            )
        );
      // case '/category' :
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider.value(
      //       value: _categoryCubit,
      //       child: const CategoryScreen(),
      //     )
      //   );
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

      default :
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: _categoryCubit,
              //child: const CategoryScreen(),
              child: CatalogueCategoryScreen(category: ProductCategory(id: 46, name: 'Epices') , tag: ProductTag(id: -1, name: "toutes") , keySearch: ''),
            )
        );

      // default:
      // return MaterialPageRoute(
      //     builder: (_) => BlocProvider.value(
      //       value: _categoryCubit,
      //       child: const CategoryScreen(),
      //     )
      //   );
    }
  }
}