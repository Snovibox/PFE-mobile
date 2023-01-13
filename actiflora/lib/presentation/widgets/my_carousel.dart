import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pfe_mobile/data/model/daily_recipe/daily_recipe_model.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/message/no_content.dart';

class MyCarousel extends StatefulWidget {
  final List<DailyRecipeModel> items;
  const MyCarousel({Key? key, required this.items}) : super(key: key);

  @override
  _MyarouselState createState() => _MyarouselState();
}

class _MyarouselState extends State<MyCarousel> {
  int _currentIndex=0;
  List<DailyRecipeModel> cardContentList = [];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
    cardContentList = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return cardContentList.isEmpty
        ? NoContent()
        : Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 2.0,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardContentList.map((item){
                return Builder(
                  builder:(BuildContext context){
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        child: Item(img : item.image),
                      ),
                    );
                  }
                );
              }).toList(),
            ),
    
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(cardContentList, (index, url) {
                return Container(
                  width: 30.0,
                  height: 2.0,
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _currentIndex == index ? myGreen : Colors.white,
                  ),
                );
              }),
            ),
          ],
    );
  }
}

class Item extends StatelessWidget {
  final String img;

  const Item({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: Image.network(
            img,
            fit: BoxFit.cover,
            /*errorBuilder: (context, error, stackTrace) {
              return ErrorImage();
            },
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress){
              return LoadingImage();
            },*/
          ),
        ),
        Opacity(
          opacity: 0.2,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [0.5, 1],
                colors: [Colors.white.withOpacity(0),Colors.black,]
              ),
            )
          ),
        ),
      ] 
    );
  }
}
