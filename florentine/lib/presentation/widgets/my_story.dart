
import 'package:flutter/material.dart';
import 'package:florentine/presentation/widgets/message/error_image.dart';
import 'package:florentine/presentation/widgets/message/no_content.dart';
import 'package:florentine/presentation/widgets/message/on_loading_image.dart';
import 'package:florentine/presentation/widgets/text_format_widget.dart';
import 'package:woosignal/models/response/products.dart';

class MyStory extends StatefulWidget {
  final List<Product> items;
  const MyStory({Key? key, required this.items}) : super(key: key);

  @override
  _MyStoryState createState() => _MyStoryState();
}

class _MyStoryState extends State<MyStory> {
  List<Product> cardContentList = [];

  @override
  void initState() {
    super.initState();
    cardContentList = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: 240,
            width: MediaQuery.of(context).size.width,
            child: cardContentList.isEmpty
                ? NoContent()
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Item(product : cardContentList[index]);
                    },
                    itemCount: cardContentList.length,
                  ),
          );
  }
}

class Item extends StatelessWidget {
  final Product product;

  const Item({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/productDetails', arguments: product);
      },
      child: Container(
        width: 140,
        margin: const EdgeInsets.only(top: 10, bottom: 10, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                //height: 160,
                alignment: Alignment.topCenter,
                child : ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  child: Image.network(
                    "product.pic",
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
                  ),
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),

            Positioned(
              child: Container(
                width: 140,
                padding: const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
                decoration:  BoxDecoration(
                  gradient:  LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [ 0.4, 0.98,0.99],
                      colors: [
                        Colors.white.withOpacity(0.0) ,
                        Colors.black87.withOpacity(0.8),
                        Colors.black87,
                      ]
                  ),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextFormatWidget.fitFormatTitle(
                      "product.itm.isEmpty?'not defined':product.itm[0].itemName",
                      const TextStyle(
                        color : Colors.white,
                      ),
                      15,
                      true,
                      2
                    ),
                    TextFormatWidget.fitFormatTitle(
                      "product.qtt.toString()+' '+product.unite.toString()",
                      const TextStyle(
                        color : Colors.white,
                      ),
                      15,
                      false,
                      1
                    ),
                  ],
                ),
              ),
            ),
          ]
        )
      ),
    );
  }
}
