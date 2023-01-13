import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/product/product_cubit.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/catalogue_product.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';

class AllProductCatalogueScreen extends StatelessWidget{
  final int index;
  final int nbrPerPage;

  const AllProductCatalogueScreen({Key? key, required this.index, required this.nbrPerPage}) : super(key: key);
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
        create: (context) => ProductCubit(repository: ProductRepositoryImpl())..getAllProductPerPage(index, nbrPerPage),
        child: BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              return CatalogueCategoryScreenState(index: index, nbrPerPage: nbrPerPage,);
            }
        ),
      ),
    );
  }
}

class CatalogueCategoryScreenState extends StatelessWidget{
  final int index;
  final int nbrPerPage;

  const CatalogueCategoryScreenState({Key? key, required this.index, required this.nbrPerPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductCubit>().state;
    switch (state.status) {
      case ProductStatus.failure:
        return const Center(child: Text('Oops something went wrong!'));
      case ProductStatus.success:
        return CatalogueCategoryScreenView(items: state.items ,index: index, nbrPerPage: nbrPerPage,);
      default:
        return const Center(child: LoadingScreen());
    }
  }
}

class CatalogueCategoryScreenView extends StatelessWidget{
  final int index;
  final int nbrPerPage;

  final List<ProductModel> items;

  const CatalogueCategoryScreenView({Key? key, required this.items, required this.index, required this.nbrPerPage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            CatalogueProduct(items: items, rowNumber: 2),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed:(){
                      if(index >  0){
                        Navigator.of(context).pushNamed('/allItemsPerPage', arguments: [index-1,nbrPerPage]);
                      }
                    },
                    icon: Icon(Icons.arrow_back_ios, color: myGreen,),
                ),



                IconButton(
                    onPressed: (){
                      if(nbrPerPage ==  items.length){
                        Navigator.of(context).pushNamed('/allItemsPerPage', arguments: [index+1,nbrPerPage]);
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