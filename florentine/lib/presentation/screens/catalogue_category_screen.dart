import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:florentine/cubit/product/product_cubit.dart';
import 'package:florentine/data/repository/product_repository.dart';
// import 'package:florentine/presentation/utils/color.dart';
import 'package:florentine/presentation/widgets/catalogue_product.dart';
// import 'package:florentine/presentation/widgets/message/error_image.dart';
import 'package:florentine/presentation/widgets/message/on_loading_image.dart';
import 'package:woosignal/models/response/product_category.dart';
import 'package:woosignal/models/response/product_tag.dart';
import 'package:woosignal/models/response/products.dart';

class CatalogueCategoryScreen extends StatelessWidget{
  final ProductCategory category;
  final ProductTag tag;
  final String keySearch;

  const CatalogueCategoryScreen({Key? key, required this.category, required this.tag, required this.keySearch}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   leading: IconButton(
        //     onPressed: (){
        //       Navigator.of(context).pop();
        //     },
        //     icon: const Icon(Icons.arrow_back_ios, color: Colors.black,)
        //   ),
        //   title: Text( category.name??'Not defined' , style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        //   elevation: 0,
        // ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: BlocProvider(
          create: (context) => ProductCubit(repository: ProductRepositoryImpl())..getProductSearchedFiltre(category, tag, keySearch),
          child: BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CatalogueCategoryScreenState(cat: category, tag: tag,),
                );
              }
          ),
        ),
      ),
    );
  }
}

class CatalogueCategoryScreenState extends StatefulWidget{
  final ProductCategory cat;
  final ProductTag tag;

  const CatalogueCategoryScreenState({Key? key, required this.cat, required this.tag}) : super(key: key);

  @override
  State<CatalogueCategoryScreenState> createState() => _CatalogueCategoryScreenStateState();
}

class _CatalogueCategoryScreenStateState extends State<CatalogueCategoryScreenState> {

  @override
  Widget build(BuildContext context) {
    final state = context.watch<ProductCubit>().state;
    switch (state.status) {
      case ProductStatus.failure:
        return const Center(child: Text('Oops something went wrong!'));
      case ProductStatus.success:
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SearchBar(cat: widget.cat, tag: widget.tag),
                // const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Text("Les plus populaires", style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
                // ),
                // Populaire(cat: widget.cat,),
                // const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Text("Vos produits de A à Z", style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
                // ),
                // ChipsTag(tag: widget.tag, category: widget.cat, keysearch: '',),
                // Expanded(child: SingleChildScrollView(child:
                //   CatalogueCategoryScreenView(items: state.items),
                // )),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Center(
                //     child: Image.asset(
                //       'assets/florentine_header.png',
                //       height: 150,
                //     ),
                //   ),
                // ),

                CatalogueCategoryScreenView(items: state.items),
              ],
            ),
          ),
        );
      default:
        return const Center(child: LoadingScreen());
    }
  }
}

class CatalogueCategoryScreenView extends StatelessWidget{
  final List<Product> items;

  const CatalogueCategoryScreenView({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: CatalogueProduct(items: items));
  }
}

// class SearchBar extends StatefulWidget {
//   final ProductCategory cat;
//   final ProductTag tag;
//   const SearchBar({Key? key, required this.cat, required this.tag}) : super(key: key);
//
//   @override
//   State<SearchBar> createState() => _SearchBarState();
// }
//
// class _SearchBarState extends State<SearchBar> {
//   final myController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//           decoration: BoxDecoration(
//             color: myGreen.withOpacity(0.1),
//             border: Border.all(color: myGreen,),
//             borderRadius: const BorderRadius.all(
//                 Radius.circular(10.0)
//             ),
//           ),
//         width: MediaQuery.of(context).size.width-20,
//         child : Row(
//           children: [
//             Flexible(
//               child: Container(
//                 height: 30,
//                 padding: const EdgeInsets.symmetric(horizontal: 5),
//                 child: TextField(
//                   controller: myController,
//                   style: const TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w500
//                   ),
//                   decoration: const InputDecoration(
//                     border: InputBorder.none,
//                   ),
//                   onChanged: (value){
//                     //context.read<ProductCubit>().getProductSearched(value);
//                   },
//                 ),
//               )
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 5.0),
//               child: IconButton(
//                 onPressed: (){
//                   context.read<ProductCubit>().getProductSearchedFiltre(widget.cat, widget.tag, myController.text);
//                 },
//                 icon: Icon(
//                   Icons.search_outlined,
//                   color: myGreen,
//                 ),
//               ),
//             ),
//           ],
//         )
//       ),
//     );
//   }
// }

// class Populaire extends StatefulWidget {
//   final ProductCategory cat;
//   const Populaire({Key? key, required this.cat,}) : super(key: key);
//
//   @override
//   State<Populaire> createState() => _PopulaireState();
// }

// class _PopulaireState extends State<Populaire> {
//   List<Product> popular = [] ;
//
//   getPopular() async {
//
//     List<Product> temp = await ProductRepositoryImpl().getPopularProduct(widget.cat);
//     popular.addAll(temp);
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getPopular();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 170,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: popular.length,
//         itemBuilder: (BuildContext context, int index){
//         return GestureDetector(
//           onTap: (){
//             Navigator.of(context).pushNamed('/productDetails', arguments: popular[index]);
//           },
//           child: Container(
//             padding: const EdgeInsets.all(5),
//             height: 170,
//             width: 120,
//             child: Column(
//               children: [
//                 Image.network(
//                   popular[index].images.isNotEmpty?popular[index].images.last.src ?? '':'',
//                   fit: BoxFit.fill,
//                   height: 120,
//                   errorBuilder: (context, error, stackTrace) {
//                     return const ErrorImage();
//                   },
//                   loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
//                     if(loadingProgress == null ) {
//                       return child;
//                     }
//                     return const LoadingImage();
//                   },
//                 ),
//                 Center(
//                   child: RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text: popular[index].name??'',
//                           style: const TextStyle(
//                             color: Colors.black
//                           )
//                         )
//                       ]
//                     ),
//                     overflow: TextOverflow.visible,
//                     maxLines: 2,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       })
//     );
//   }
// }


// class ChipsTag extends StatefulWidget {
//   final ProductTag tag;
//   final ProductCategory category;
//   final String keysearch;
//   const ChipsTag({Key? key, required this.tag, required this.category, required this.keysearch}) : super(key: key);
//
//   @override
//   State<ChipsTag> createState() => _ChipsTagState();
// }

// class _ChipsTagState extends State<ChipsTag> {
//
//   ProductTag Alltag = ProductTag(id: -1, name: "Toutes");
//   List<ProductTag> tags = [];
//
//   getTag() async {
//     List<ProductTag>? temp = await ProductRepositoryImpl().getAllTags();
//     tags.add(Alltag);
//     tags.addAll(temp??[]);
//     return temp;
//   }
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getTag();
//   }

  // @override
  // Widget build(BuildContext context) {
  //
  //   return SizedBox(
  //     height: 40,
  //     width: MediaQuery.of(context).size.width,
  //     child: tags.isEmpty
  //       ? Container()
  //       : ListView.builder(
  //         scrollDirection: Axis.horizontal,
  //         itemBuilder: (BuildContext context, int index) {
  //           if(widget.tag.id == tags[index].id){
  //             return Container(
  //               margin : const EdgeInsets.only(left: 10),
  //               child: GestureDetector(
  //                 onTap: (){
  //                   Navigator.of(context).popAndPushNamed('/catalogueByCategory', arguments: [widget.category, tags[index], widget.keysearch]); // [cat, tag, keysearch]
  //                 },
  //                 child: Chip(label: Text(tags[index].name??'', style: TextStyle(color: Theme.of(context).textSelectionTheme.selectionColor),), backgroundColor: myBlue,)
  //               ),
  //             );
  //           }
//             return Container(
//               margin : const EdgeInsets.only(left: 10),
//               child: GestureDetector(
//                 onTap: (){
//                   Navigator.of(context).popAndPushNamed('/catalogueByCategory', arguments: [widget.category, tags[index], widget.keysearch]); // [cat, tag, keysearch]
//                 },
//                 child: Chip(label: Text(tags[index].name??'',style: TextStyle(color: Theme.of(context).textSelectionTheme.selectionColor), ), backgroundColor: myBlue.withOpacity(0.3),)
//               ),
//             );
//           },
//           itemCount: tags.length,
//         ),
//     );
//   }
// }
