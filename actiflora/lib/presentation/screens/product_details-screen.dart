import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';
import 'package:simple_html_css/simple_html_css.dart';
import 'package:pfe_mobile/cubit/product/product_cubit.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';
import 'package:pfe_mobile/data/repository/product_repository.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';

import 'package:pfe_mobile/presentation/widgets/message/error_image.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';

class ProductDetailsScreen extends StatelessWidget{
  final ProductModel product;

  const ProductDetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create: (context) => ProductCubit(repository: ProductRepositoryImpl())..getProductbyId(product.idItem),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return ProductDetailsState();
        }
      ),
    );
  }
}

class ProductDetailsState extends StatelessWidget{
  @override
  Widget build(context) {
    final state = context.watch<ProductCubit>().state;
    switch (state.status) {
      case ProductStatus.failure:
        return const Center(child: Text('Oops something went wrong!'));
      case ProductStatus.success:
        return ProductDetaileScrenView(items: state.items);
      default:
        return const Center(child: LoadingScreen());
    }
  }
}

class ProductDetaileScrenView extends StatelessWidget{
  final List<ProductModel> items;

  const ProductDetaileScrenView({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(context) {
    ProductModel x = items[0];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: myFond,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: myFond,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(200),
            child: Column(
              children: [
                HeaderTabProduct(x: x),
                const TabBar(
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.normal
                  ),
                  tabs: [
                    Tab(text:"Caracteristiques",),
                    Tab(text:"Proprietes"),
                    Tab(text:"Mode d'emplois"),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            CarracteristiqueView(data: x),
            ProprieteView(htmlData: x.itm.isEmpty?'-':x.itm[0].details),
            MEView(htmlData: x.symbols.isEmpty?'-':x.symbols[0].smbl.isEmpty?'not defined':x.symbols[0].smbl[0].manual ),
          ],
        ),
      ),
    );
  }
}

class HeaderTabProduct extends StatelessWidget{
  final ProductModel x;

  const HeaderTabProduct({Key? key, required this.x}) : super(key: key);
  @override
  Widget build(context) {
    return Stack(
      children: [
        Container(
          child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                x.pic,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const ErrorImage();
                },
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
                  if(loadingProgress == null ) {
                    return child;
                  }
                  return const LoadingImage();
                },
              )
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.only(right: 2),
            decoration: const BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 25,
            ),
          ),
        ),
a      ],
    );
  }
}

//______________________________________________________________________________
class CarracteristiqueView extends StatelessWidget{
  final ProductModel data;

  const CarracteristiqueView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarracteriqtiqueTiles(ambony: 'Categorie' , ambany: data.categories[0].cat[0].categoryName , color: false),
        CarracteriqtiqueTiles(ambony: 'Volume/Poids' , ambany: data.qtt.toString()+' '+data.unite.toString() , color: true),
        CarracteriqtiqueTiles(ambony: 'Origine' , ambany: data.itm[0].origine , color: false),
        CarracteriqtiqueTiles(ambony: 'Certification' , ambany: data.certifications[0].cert[0].certificationName , color: true),
      ],
    );
  }
}

class CarracteriqtiqueTiles extends StatelessWidget{
  final String ambony;
  final String ambany;
  final bool color;

  const CarracteriqtiqueTiles({Key? key, required this.ambony, required this.ambany, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: color?myFond:Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormatWidget.fitFormatContent(
              ambony,
              //Theme.of(context).textTheme.headline4,
              const TextStyle( color : Colors.black, ),
              15,
              true,
              1
          ),
          TextFormatWidget.fitFormatContent(
              ambany,
              //Theme.of(context).textTheme.headline4,
              const TextStyle( color : Colors.black, ),
              15,
              false,
              1
          )
        ],
      )
    );
  }

}

//______________________________________________________________________________
class ProprieteView extends StatelessWidget{
  final String htmlData;

  ProprieteView({Key? key, required this.htmlData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: StringToHTML(htmlData:  htmlData,),
    );
  }
}

//______________________________________________________________________________
class MEView extends StatelessWidget{
  final String htmlData;

  MEView({Key? key, required this.htmlData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: StringToHTML(htmlData: htmlData,),
    );
  }
}

//______________________________________________________________________________
class StringToHTML extends StatelessWidget {
  final String htmlData;

  final String defaultData = """<body>
    <h1 style='text-align: center'>
      Details of the product of the ACTIFLORA range
    </h1>
    <p style='text-align: center'>see details soon</p>
  </body>""";

  const StringToHTML({Key? key, required this.htmlData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HTML.toRichText(context, htmlData.isEmpty?defaultData:htmlData);
  }

}