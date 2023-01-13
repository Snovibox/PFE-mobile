import 'package:flutter/material.dart';
import 'package:florentine/presentation/utils/color.dart';
import 'package:florentine/presentation/widgets/message/error_image.dart';
import 'package:florentine/presentation/widgets/message/no_content.dart';
import 'package:florentine/presentation/widgets/message/on_loading_image.dart';
import 'package:florentine/presentation/widgets/text_format_widget.dart';
import 'package:woosignal/models/response/product_category.dart';
import 'package:woosignal/models/response/product_tag.dart';
// import 'package:woosignal/models/response/products.dart';

class CategoriesTiles extends StatelessWidget{

  final List<ProductCategory> items;
  final int rowNumber;


  const CategoriesTiles({Key? key, required this.items, required this.rowNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.width;
    double ratio = screenSize/(screenSize+100);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: SizedBox(
            width: screenSize - 50,
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
                  return ProductCategoryTails(x: items[index]);
                }
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCategoryTails extends StatefulWidget{
  final ProductCategory x;
  const ProductCategoryTails({Key? key, required this.x}) : super(key: key);

  @override
  State<ProductCategoryTails> createState() => _ItemState();
}

class _ItemState extends State<ProductCategoryTails> {

  @override
  Widget build(BuildContext context) {
    ProductCategory x = widget.x;
    ProductTag tag = ProductTag(id: -1, name: "toutes");

    // print("______________________________________________________________________________________________________");
    // print("______________________________________________________________________________________________________");
    //
    // print(x.id);
    // print(x.name);
    //
    // print("______________________________________________________________________________________________________");
    // print("______________________________________________________________________________________________________");

    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/catalogueByCategory', arguments: [x, tag, '']); // [cat, tag, keysearch]
      },
      child: Card(
        color: Theme.of(context).cardColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: (MediaQuery.of(context).size.width/2)-50,
                width: (MediaQuery.of(context).size.width/2)-50,
                child: Image.network(
                  x.image?.src ?? '',
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
            Center(
              // child: Text(
              //   x.name.toString(),
              // ),
              child: TextFormatWidget.fitFormatTitle(
                  x.name.toString(),
                  TextStyle(
                    color : myGreen,
                  ),
                  20,
                  true,
                  1
              )
            ),
            Center(
              child: Text(
                x.count.toString()+" elements",
              ),
            )
          ],
        ),
      ),
    );
  }
}


