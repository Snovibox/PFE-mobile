import 'package:flutter/material.dart';
import 'package:pfe_mobile/data/model/product/product_model.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/message/error_image.dart';
import 'package:pfe_mobile/presentation/widgets/message/no_content.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';

class CatalogueProduct extends StatelessWidget{

  final List<ProductModel> items;
  final int rowNumber;


  const CatalogueProduct({Key? key, required this.items, required this.rowNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    double ratio = screenSize/(screenSize+265);
    return SizedBox(
      width: screenSize,
      child: items.isEmpty
      ? NoContent()
      :GridView.builder(
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
  final ProductModel x;
  const ItemProduct({Key? key, required this.x}) : super(key: key);
  @override
  State<ItemProduct> createState() => _ItemState();
}

class _ItemState extends State<ItemProduct> {

  String error_none_name = '-';
  String error_none_quantity = '-';
  String error_none_unite = '-';

  @override
  Widget build(BuildContext context) {
    ProductModel x = widget.x;
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/productDetails', arguments: x);
      },
      child: Column(
        children: [
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width/2,
                  width: MediaQuery.of(context).size.width/2,
                  child: Image.network(
                    x.pic,
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
                  )
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            padding : const EdgeInsets.all(5),
            height: 100,
            width: MediaQuery.of(context).size.width/2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width/2,
                        child :  TextFormatWidget.fitFormatTitle(
                          x.itm.isEmpty?error_none_name:x.itm[0].itemName,
                          Theme.of(context).textTheme.headline3,
                          15,
                          true,
                          2
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(width: MediaQuery.of(context).size.width/2,
                            child :  TextFormatWidget.fitFormatTitle(
                              x.qtt.toString()+' '+x.unite.toString(),
                              Theme.of(context).textTheme.headline4,
                              15,
                              false,
                              1
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width/2,
                            child :  TextFormatWidget.fitFormatTitle(
                              x.certifications.isEmpty?'-':x.certifications[0].cert.isEmpty?'-':x.certifications[0].cert[0].certificationName.toString(),
                              Theme.of(context).textTheme.headline4,
                              15,
                              false,
                              1
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border_outlined),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_)=>  AlertDialog(
                        title : const Center(child: Text('connexion requise')),
                        content : const Icon(Icons.timer),
                        backgroundColor: myGreen,
                      )
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


