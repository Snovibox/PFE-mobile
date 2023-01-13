import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pfe_mobile/l10n/l10n.dart';
import 'package:pfe_mobile/l10n/my_shared.dart';
import 'package:pfe_mobile/presentation/screens/my_app.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:pfe_mobile/presentation/widgets/message/on_loading_image.dart';
import 'dart:convert';

import 'package:pfe_mobile/presentation/widgets/text_format_widget.dart';



//------------------------------------------------------------------------------
//Class ho an'ny objet mitondra ireo information anatin'ilay slider intro
//------------------------------------------------------------------------------

class IntroSliderModel
{
  final String image;
  final String description;

  IntroSliderModel(this.image, this.description);


  static Future<List<IntroSliderModel>> getDataSlide(String language) async {

    final String response = await rootBundle.loadString('assets/script_intro.json');
    Map<String,dynamic> data = await json.decode(response);


    return [
      IntroSliderModel('assets/intro_img_1.png', data[language]["descri"][0]),
      IntroSliderModel('assets/intro_img_2.png', data[language]["descri"][1]),
      IntroSliderModel('assets/intro_img_3.png', data[language]["descri"][2]),
    ];
  }
}

class IntroSliderModelControl {
  final IntroSliderModel model;
  final String description;

  IntroSliderModelControl(this.model, this.description);
}

//------------------------------------------------------------------------------
//Init
//------------------------------------------------------------------------------

class Init extends StatelessWidget{
  const Init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: SingleChildScrollView(child: InitLanguage())
        )
    );
  }
}

//------------------------------------------------------------------------------
//language choice
//------------------------------------------------------------------------------

class InitLanguage extends StatefulWidget{
  const InitLanguage({Key? key}) : super(key: key);

  @override
  State<InitLanguage> createState() => _InitLanguageState();
}

class _InitLanguageState extends State<InitLanguage> {

  String? language = 'English';
  List<IntroSliderModel> itemsModel = [];

  getData() async {
    itemsModel = await IntroSliderModel.getDataSlide(language??"English");
    setState(() {
    });
  }

  @override
  initState() {
    language = 'English';
    getData();
  }

  @override
  build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(100),
                child: Container(
                  child: Image.asset(
                    'assets/Phael-Flor-Export.png',
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    const Text('Choose your language'),
                    Container(height: 20,),
                    //--------------------------------------------------------------------
                    DropdownButton(
                        value: language??"English",
                        hint:  Container(
                          padding: EdgeInsets.all(30.0),
                          child: Center(child: Text('English')),
                        ),
                        items: ['English', 'Deutsch', 'Français'].map(
                                (e) => DropdownMenuItem<String>(
                              child: Container(
                                margin: const EdgeInsets.all(10.0),
                                child: Text(e, style: TextStyle(color: Theme.of(context).textSelectionTheme.selectionColor ),),
                              ),
                              value: e,
                            )
                        ).toList(),
                        onChanged: (String? value) async {
                          String x = 'English';
                          if(value!=null) x = value;
                          ShareLanguage.setSharedLanguage(L10n.getL10nValue(value));
                          language = value;
                          setState(() {
                          });
                          print(value);
                        }
                    ),
                    //--------------------------------------------------------------------
                    Container(height: 20,),
                    Center(child: TextButton(
                      onPressed: () {
                        getData();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyIntro(
                            items: itemsModel,
                            language: language,)),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:  CrossAxisAlignment.center,
                        children: [
                          Text('Next', style: TextStyle(color : myGreen, fontSize: 16 ),),
                          Icon(Icons.navigate_next, color: myGreen,)
                        ],

                      ),

                    ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



//------------------------------------------------------------------------------
//Slider
//------------------------------------------------------------------------------

class MyIntro extends StatefulWidget {
  final List<IntroSliderModel> items;
  final String? language;

  const MyIntro({Key? key, required this.items, required this.language}) : super(key: key);

  @override
  _MyIntroState createState() => _MyIntroState();
}

class _MyIntroState extends State<MyIntro> {
  Map<String,dynamic> data = {} ;

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/script_intro.json');
    data = await json.decode(response);
    setState(() {
    });
  }
  //----------------------------------------------------------------------------
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: _controller,
          items: widget.items.map((item){
            String descrit = 'normal';
            if(widget.items.indexOf(item)==0) {
              descrit = 'first';
            } else if(widget.items.indexOf(item)==widget.items.length-1) {
              descrit = 'last';
            }
            return Item(
              item: IntroSliderModelControl(item,descrit) ,
              controller: _controller,
              data: data,
              language: widget.language??'English',
            );
          }).toList(),
          options: CarouselOptions(
            scrollDirection: Axis.vertical,
            enableInfiniteScroll: false,
            aspectRatio: 2.0,
            viewportFraction: 1,
            enlargeCenterPage: true,
            height: MediaQuery.of(context).size.height,
          ),
        ),
      ],
    );
  }
}



//------------------------------------------------------------------------------
//Slider Item
//------------------------------------------------------------------------------

class Item extends StatelessWidget {
  final IntroSliderModelControl item;
  final CarouselController controller;
  final Map<String, dynamic> data;
  final String language;

  const Item({Key? key, required this.item, required this.controller, required this.data, required this.language}) : super(key: key);


  bool getBool(String target, String x){
    if(target==x) return false;
    return true;
  }

  Widget getButton(BuildContext context, String target, String x){
    if(target==x) {
      return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyApp()),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            TextFormatWidget.TextIntroBtn(data[language]["start"]),
            Icon(Icons.navigate_next, color : myGreen)
          ],
        )
      );
    }
    return TextButton(
      onPressed: () => controller.nextPage(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:  CrossAxisAlignment.center,
        children: [
          TextFormatWidget.TextIntroBtn(data[language]["next"]),
          Icon(Icons.navigate_next, color : myGreen)
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    print(language);
    print(data);
    if(data.isEmpty) {
      return const LoadingScreen();
    }
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 100,
                child: Image.asset(
                  item.model.image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0, 0.6,0.99],
                      colors: [
                        Colors.white.withOpacity(0.0) ,
                        Colors.black54.withOpacity(0.2),
                        Colors.black54,
                      ]
                  ),
                )
              ),
              Positioned(
                bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      item.model.description,
                      style: const TextStyle(

                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                      overflow: TextOverflow.visible,
                      //softWrap: true,
                    ),
                  ),
              )
            ]
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                // Visibility(
                //   visible: getBool('first', item.description),
                //   child: Flexible(
                //     child: TextButton(
                //       onPressed: () => controller.previousPage(),
                //       child: TextFormatWidget.TextIntroBtn(data[language]["prev"]),
                //     ),
                //   ),
                // ),
                getButton(context, 'last', item.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}