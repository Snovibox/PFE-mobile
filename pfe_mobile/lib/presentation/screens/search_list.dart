import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/cubit/product/product_cubit.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/catalogue_product.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
import 'package:woosignal/models/response/products.dart';


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
      body: SafeArea(
        child: BlocProvider(
          create: (context) => ProductCubit(repository: ProductRepositoryImpl())..getProductSearched(''),
          child: BlocBuilder<ProductCubit, ProductState> (
            builder: (context, state){
              return Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: SearchBar(),
                  ),
                  Flexible(child: SearchScreenState()),
                ],
              );
            },
          )
        ),
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
    return Center(
      child: Container(
          decoration: BoxDecoration(
            color: myGreen.withOpacity(0.1),
            border: Border.all(color: myGreen,),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0)
            ),
          ),
          width: MediaQuery.of(context).size.width-20,
          child : Row(
            children: [
              Flexible(
                child: Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    controller: myController,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (value){
                      context.read<ProductCubit>().getProductSearched(myController.text);
                    },
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: IconButton(
                  onPressed: (){
                    context.read<ProductCubit>().getProductSearched(myController.text);
                  },
                  icon: Icon(
                    Icons.search_outlined,
                    color: myGreen,
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}

class SearchList extends StatelessWidget {
  final List<Product> items;

  const SearchList({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CatalogueProduct(items: items);
  }

}