import 'package:flutter/material.dart';
import 'package:pfe_mobile/data/model/article/articles_model.dart';
import 'package:pfe_mobile/presentation/widgets/date_format.dart';
import 'package:pfe_mobile/presentation/widgets/message/error_image.dart';
import 'package:pfe_mobile/presentation/widgets/message/no_content.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';

class MyArticleCard extends StatefulWidget{
  final List<ArticlesModel> items;

  const MyArticleCard({Key? key, required this.items}) : super(key: key);

  @override
  State<MyArticleCard> createState() => _MyArticleCardState();
}

class _MyArticleCardState extends State<MyArticleCard> {
  List<ArticlesModel> cardContentList = [];

  @override
  void initState() {
    super.initState();
    cardContentList = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: (cardContentList.length * 200)+20,
            width: MediaQuery.of(context).size.width-20,
            child: cardContentList.isEmpty
                ? NoContent()
                : ListView.builder(
                    shrinkWrap: true, 
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Item(item : cardContentList[index]);
                    },
                    itemCount: cardContentList.length,
                  ),
          );
  }
}

class Item extends StatefulWidget{
  final ArticlesModel item;

  const Item({Key? key, required this.item}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {

  String error_none_title = 'Article';
  String error_none_content = '-';

  @override
  Widget build(BuildContext context) {
    ArticlesModel x = widget.item;
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pushNamed('/articleDetails', arguments: x);
      },
      child: Container(
        padding : const EdgeInsets.all(10),
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width/2 -20,
              padding: const EdgeInsets.only(right: 5),
              child: Image.network(
                x.picture,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace){
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
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width/2 -20,
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  TextFormatWidget.fitFormatTitle(
                    x.act.isEmpty?error_none_title:x.act[0].title,
                    Theme.of(context).textTheme.headline3,
                    15,
                    true,
                    2,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: TextFormatWidget.fitFormatContent(
                      MyDateFormat.date(DateTime.parse(x.date)),
                      Theme.of(context).textTheme.headline4,
                      15,
                      false,
                      1
                    )
                  ),
                  //Flexible( child:
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: TextFormatWidget.fitFormatContent(
                          x.act.isEmpty?error_none_content:x.act[0].content,
                          Theme.of(context).textTheme.bodyText2,
                          16,
                          false,
                          7
                        )
                      ),
                    ),
                  //),
                ],
              )
            )
          ],
        )
      ),
    );
  }
}