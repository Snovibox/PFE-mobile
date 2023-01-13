import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/product/product_cubit.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/catalogue_product.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Center(
            child : Image.asset(
              'assets/search_background.png',
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/2,
            ),
          ),
          BlocProvider(
            create: (context) => ProductCubit(repository: ProductRepositoryImpl())..getProductSearched(''),
            child: BlocBuilder<ProductCubit, ProductState> (
              builder: (context, state){
                return Column(
                  children: const [
                    SearchBar(),
                    Flexible(child: SearchScreenState()),
                  ],
                );
              },
            )
          )
        ],
      ),
    );
  }
}

class SearchScreenState extends StatelessWidget{
  const SearchScreenState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductCubit>().state;
    switch (state.status) {
      case ProductStatus.loading:
        return const Center(child: LoadingScreen());
      case ProductStatus.failure:
        return const Center(child: Text('')); //Oops something went wrong!
      case ProductStatus.success:
        return SearchList(items: state.items);
      default:
        return const Center(child: LoadingScreen());
    } 
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child : Row(
          children: [
            const Icon(Icons.search,),
            Flexible(child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(
                  focusColor: myGreen,
                ),
                onChanged: (value){
                  context.read<ProductCubit>().getProductSearched(value);
                },
              ),
            )),
            Container(height: 30 ,color: myGreen ,child: Center(child: TextButton(
              onPressed: (){
                context.read<ProductCubit>().getProductSearched(myController.text);
              },
              child: const Text('Recherche', style: TextStyle(color:Colors.white))))),
          ],
        )
      ),
    );
  }
}

class SearchList extends StatelessWidget {
  final List<ProductModel> items;

  const SearchList({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CatalogueProduct(items: items, rowNumber: 2);
  }

}