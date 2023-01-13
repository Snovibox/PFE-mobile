import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:florentine/presentation/widgets/message/no_content.dart';
import 'package:florentine/presentation/widgets/text_format_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_html_css/simple_html_css.dart';
import 'package:florentine/cubit/product/product_cubit.dart';
import 'package:florentine/data/repository/product_repository.dart';
import 'package:florentine/presentation/utils/color.dart';
import 'package:florentine/presentation/utils/favorite_list_provider.dart';
import 'package:florentine/presentation/widgets/message/error_image.dart';
import 'package:florentine/presentation/widgets/message/on_loading_image.dart';
import 'package:woosignal/models/response/products.dart';

class ProductDetailsScreen extends StatelessWidget{
  final Product product;

  const ProductDetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create: (context) => ProductCubit(repository: ProductRepositoryImpl())..getProductbyId(product.id??0),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return const ProductDetailsState();
        }
      ),
    );
  }
}

class ProductDetailsState extends StatelessWidget{
  const ProductDetailsState({Key? key}) : super(key: key);

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
  final List<Product> items;

  const ProductDetaileScrenView({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(context) {
    if(items.isEmpty){
      return NoContent();
    }
    Product x = items[0];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: myFond,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: myFond,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/2.5 + 70),
            child: Column(
              children: [
                HeaderTabProduct(x: x),
                TabBar(
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.normal
                  ),
                  indicatorColor: myGreen,
                  tabs: const [
                    Tab(text:"Proprietés",),
                    Tab(text:"Utilisation"),
                    //Tab(text:"Mode d'emploi"),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            CarracteristiqueView(data: x.attributes),
            ProprieteView(htmlData: x.tags.isEmpty?'': x.tags[0].name??''), //x.images.isEmpty?'':x.images[0].src??'',
            //MEView(htmlData: x.description??''),
          ],
        ),
      ),
    );
  }
}

class HeaderTabProduct extends StatefulWidget{
  final Product x;



  const HeaderTabProduct({Key? key, required this.x}) : super(key: key);

  @override
  State<HeaderTabProduct> createState() => _HeaderTabProductState();
}

class _HeaderTabProductState extends State<HeaderTabProduct> {

  bool stateKeraTrue = false;

  aoSaTsy() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? efaAo = prefs.getStringList('favoriteList');

    efaAo ??= []; // raha ohatra ka null ilay efaAo de omena tableau vide

    // condition oe efa ao ve sa tsy ilay x
    // raha mbola tsy ao de ampidirina ao
    // raha efa ao de esorina ao
    if(efaAo.contains(widget.x.id.toString())){
      stateKeraTrue = true;
      setState(() { });
    } else {
      stateKeraTrue = false;
      setState(() { });
    }
  }

  @override
  Widget build(context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: Colors.white,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height/2.5,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    widget.x.images.isEmpty?'':widget.x.images[0].src??'',
                    //fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const ErrorImage();
                    },
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
                      if(loadingProgress == null ) {
                        return child;
                      }
                      return const LoadingImage();
                    },
                    width : 100,
                    height : 100,
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                color : myFond,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // anarana

                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: Text(
                        widget.x.name??'',
                        overflow: TextOverflow.visible,
                        maxLines: 3,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                    // kera

                    stateKeraTrue?IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: myPink,
                        size: 30,
                      ),
                      onPressed: () {
                        ShareFavoriteList.setSharedFavorite(FavoriteListItem(idProduct: widget.x.id.toString()));
                        aoSaTsy();
                      },
                    ):IconButton(
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: myPink,
                        size: 30,
                      ),
                      onPressed: () {
                        ShareFavoriteList.setSharedFavorite(FavoriteListItem(idProduct: widget.x.id.toString()));
                        aoSaTsy();
                      },
                    )
                    ,
                  ],
                ),
              ),
            )
          ],
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
      ],
    );
  }
}

//______________________________________________________________________________
class CarracteristiqueView extends StatefulWidget{
  final List<Attribute> data;


  const CarracteristiqueView({Key? key, required this.data}) : super(key: key);

  @override
  State<CarracteristiqueView> createState() => _CarracteristiqueViewState();
}

class _CarracteristiqueViewState extends State<CarracteristiqueView> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.data.length,
        itemBuilder: (BuildContext context, int index){
          bool colorProvider = false;
          if(index%2 == 1 ) {
            colorProvider = true;
          }
          return CarracteriqtiqueTiles(ambony: widget.data[index].name??'' , ambany: widget.data[index].options??[] , color: colorProvider);
        }
      ),
    );

  }
}

class CarracteriqtiqueTiles extends StatefulWidget{
  final String ambony;
  final List<String> ambany;
  final bool color;

  const CarracteriqtiqueTiles({Key? key, required this.ambony, required this.ambany, required this.color}) : super(key: key);

  @override
  State<CarracteriqtiqueTiles> createState() => _CarracteriqtiqueTilesState();
}

class _CarracteriqtiqueTilesState extends State<CarracteriqtiqueTiles> {
  String textambany = '';

  getAmbany() {
    String ret = '';

    for(int i = 0; i < widget.ambany.length; i++){
      ret = ret + widget.ambany[i];
      ret = ret + ' ; ';
    }
    textambany = ret;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAmbany();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      color: widget.color?myFond:Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormatWidget.fitFormatContent(
              widget.ambony,
              //Theme.of(context).textTheme.headline4,
              const TextStyle( color : Colors.black, ),
              15,
              true,
              1
          ),
          TextFormatWidget.fitFormatContent(
              textambany,
              //Theme.of(context).textTheme.headline4,
              TextStyle( color : myGreen, ),
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

  const ProprieteView({Key? key, required this.htmlData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: StringToHTML(htmlData:  htmlData,),
      ),
    );
  }
}

//______________________________________________________________________________
class MEView extends StatelessWidget{
  final String htmlData;

  const MEView({Key? key, required this.htmlData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: StringToHTML(htmlData: htmlData,),
      ),
    );
  }
}

//______________________________________________________________________________
class StringToHTML extends StatelessWidget {
  final String htmlData;

  final String defaultData = """<body>
    <h1 style='text-align: center'>
      
    </h1>
  </body>""";

  const StringToHTML({Key? key, required this.htmlData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HTML.toRichText(context, htmlData.isEmpty?defaultData:htmlData);
  }

}