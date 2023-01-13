import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/product/product_cubit.dart';
import 'package:pfe_mobile/data/model/category/category_model.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/catalogue_product.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';

class CatalogueCategoryScreen extends StatelessWidget{
  final CategoryModel category;

  const CatalogueCategoryScreen({Key? key, required this.category}) : super(key: key);
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
        title: Text(category.cat.isEmpty?'not defined':category.cat[0].categoryName, style: TextStyle(color: myGreen),),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocProvider(
        create: (context) => ProductCubit(repository: ProductRepositoryImpl())..getProductbyCategoryId(category.idCategory),
        child: BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              return const CatalogueCategoryScreenState();
            }
        ),
      ),
    );
  }
}

class CatalogueCategoryScreenState extends StatelessWidget{
  const CatalogueCategoryScreenState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductCubit>().state;
    switch (state.status) {
      case ProductStatus.failure:
        return const Center(child: Text('Oops something went wrong!'));
      case ProductStatus.success:
        return CatalogueCategoryScreenView(items: state.items);
      default:
        return const Center(child: LoadingScreen());
    }
  }
}

class CatalogueCategoryScreenView extends StatelessWidget{
  final List<ProductModel> items;

  const CatalogueCategoryScreenView({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: CatalogueProduct(items: items, rowNumber: 2));
  }
}