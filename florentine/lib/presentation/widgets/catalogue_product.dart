import 'package:flutter/material.dart';
import 'package:florentine/presentation/utils/color.dart';
import 'package:florentine/presentation/utils/favorite_list_provider.dart';
import 'package:florentine/presentation/widgets/message/error_image.dart';
// import 'package:florentine/presentation/widgets/message/no_content.dart';
import 'package:florentine/presentation/widgets/message/on_loading_image.dart';
// import 'package:florentine/presentation/widgets/tags.dart';
import 'package:florentine/presentation/widgets/text_format_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woosignal/models/response/products.dart';
// import 'package:simple_html_css/simple_html_css.dart';

class CatalogueProduct extends StatelessWidget{

  final List<Product> items;


  const CatalogueProduct({Key? key, required this.items,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    double ratio = screenSize/(screenSize+150);
    return SizedBox(
      width: screenSize,
      child: items.isEmpty
      //? NoContent()
      ? Container()
      : GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: ratio,
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemCount: items.length,
        itemBuilder: (BuildContext ctx, index) {
            return ItemProduct(x: items[index]);
        }
      ),
    );
  }
}

class ItemProduct extends StatefulWidget{
  final Product x;
  const ItemProduct({Key? key, required this.x}) : super(key: key);
  @override
  State<ItemProduct> createState() => _ItemState();
}

class _ItemState extends State<ItemProduct> {

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
  void initState() {
    super.initState();
    aoSaTsy();
  }

  @override
  Widget build(BuildContext context) {
    Product x = widget.x;

    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/productDetails', arguments: x);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
          color: Theme.of(context).cardColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: (MediaQuery.of(context).size.width/2)-20,
                  width: (MediaQuery.of(context).size.width/2)-20,
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.network(
                    x.images.isEmpty?'':x.images[0].src??'',
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) {
                      return const ErrorImage();
                    },
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
                      if(loadingProgress == null ) {
                        return child;
                      }
                      return const LoadingImage();
                    },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/3.4,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormatWidget.fitFormatTitle(
                        x.name??'', Theme.of(context).textTheme.headline3, 13, false , 3
                    ),
                  ),

                  stateKeraTrue?IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: myPink,
                    ),
                    onPressed: () {
                      ShareFavoriteList.setSharedFavorite(FavoriteListItem(idProduct: x.id.toString()));
                      aoSaTsy();
                    },
                  ):IconButton(
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      color: myPink,
                    ),
                    onPressed: () {
                      ShareFavoriteList.setSharedFavorite(FavoriteListItem(idProduct: x.id.toString()));
                      aoSaTsy();
                    },
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
    // return GestureDetector(
    //   onTap: (){
    //     Navigator.of(context).pushNamed('/productDetails', arguments: x);
    //   },
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Card(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             SizedBox(
    //               height: MediaQuery.of(context).size.width/3.5,
    //               width: MediaQuery.of(context).size.width/4,
    //               child: Image.network(
    //                 x.images.isEmpty?'':x.images[0].src??'',
    //                 fit: BoxFit.fill,
    //                 errorBuilder: (context, error, stackTrace) {
    //                   return const ErrorImage();
    //                 },
    //                 loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
    //                   if(loadingProgress == null ) {
    //                     return child;
    //                   }
    //                   return const LoadingImage();
    //                 },
    //               )
    //             ),
    //           ],
    //         ),
    //       ),
    //       Flexible(
    //         child: Container(
    //           color: Theme.of(context).scaffoldBackgroundColor,
    //           padding : const EdgeInsets.all(5),
    //           height: MediaQuery.of(context).size.width/3.5,
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Flexible(
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Container(
    //                       child: Column(
    //                         children: [
    //                           TextFormatWidget.fitFormatTitle(
    //                               x.name??'', Theme.of(context).textTheme.headline3, 15, true, 1
    //                           ),
    //                           Container(
    //                             height: MediaQuery.of(context).size.width/5.9,
    //                             padding: const EdgeInsets.symmetric(vertical: 5.0),
    //                             child: RichText(
    //                               text: TextSpan(
    //                                 style : TextStyle(color: Theme.of(context).textSelectionTheme.selectionColor, fontSize: 20),
    //                                 children: [
    //                                   TextSpan(
    //                                       text : HTML.toRichText( context, x.shortDescription??'', ).text.toPlainText(),
    //                                       style : TextStyle(color: Theme.of(context).textSelectionTheme.selectionColor, fontSize: 12)
    //                                   )
    //
    //                                 ]
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //
    //                     Tags(allTags: x.tags)
    //                   ],
    //                 ),
    //               ),
    //               //-----------------------------------------------------------------------------------------------------------------------------------------
    //
    //               stateKeraTrue?IconButton(
    //                 icon: Icon(
    //                   Icons.favorite,
    //                   color: myGreen,
    //                 ),
    //                 onPressed: () {
    //                   ShareFavoriteList.setSharedFavorite(FavoriteListItem(idProduct: x.id.toString()));
    //                   aoSaTsy();
    //                 },
    //               ):IconButton(
    //                 icon: Icon(
    //                   Icons.favorite_border_outlined,
    //                   color: myGreen,
    //                 ),
    //                 onPressed: () {
    //                   ShareFavoriteList.setSharedFavorite(FavoriteListItem(idProduct: x.id.toString()));
    //                   aoSaTsy();
    //                 },
    //               ),
    //
    //             ],
    //           ),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}

