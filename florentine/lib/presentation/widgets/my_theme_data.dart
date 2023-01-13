import 'package:flutter/material.dart';
import 'package:florentine/presentation/utils/color.dart';

class MyThemeData {
  static ThemeData myLightTheme(){
    return ThemeData(
        //brightness: Brightness.light,
        primarySwatch: myGreen,
        primaryColor: myGreen,
        scaffoldBackgroundColor: myFond, 
        textSelectionTheme: const TextSelectionThemeData(selectionColor: Colors.black45),
        bottomAppBarColor: myFond,
        canvasColor: myFond,
        iconTheme: IconThemeData(color: Colors.black38),
        cardColor: Colors.white70,
      //resaka text theme
        textTheme: const TextTheme(
          //--------------------------------------------------------------------
          headline1: TextStyle(
            color : Colors.black,
          ),

          //--------------------------------------------------------------------
          //h3Format light
          headline2: TextStyle(
            color: Colors.black54,
          ),

          //--------------------------------------------------------------------
          //fitFormatTitle bold
          headline3: TextStyle(
            color : Colors.black87,
          ),

          //--------------------------------------------------------------------
          //fitFormatTitle normal
          headline4: TextStyle(
            color : Colors.black87,
          ),
          //--------------------------------------------------------------------
          //fitFormatTitle normal
          bodyText1: TextStyle(
            color : Colors.black87,
          ),
          //--------------------------------------------------------------------
          //fitFormatTitle normal
          bodyText2: TextStyle(
            color : Colors.black87,
          ),
          //--------------------------------------------------------------------
          //fitFormatTitle normal
          subtitle1: TextStyle(
            color : Colors.black87,
          ),
        ),
      );
  }

  static ThemeData myDarkTheme(){
    return ThemeData(
      //brightness: Brightness.dark,
      primarySwatch: myGreen,
      primaryColor: myGreen,
      scaffoldBackgroundColor: Colors.black,
      textSelectionTheme: TextSelectionThemeData(selectionColor: myFond),
      bottomAppBarColor: Colors.black,
      canvasColor: Colors.black,
      iconTheme: IconThemeData(color: myFond),
      cardColor: Colors.black38,
      //resaka text theme
      textTheme: const TextTheme(
        //--------------------------------------------------------------------
        headline1: TextStyle(
          color : Colors.white,
        ),

        //--------------------------------------------------------------------
        //h3Format light
        headline2: TextStyle(
          color: Colors.white,
        ),

        //--------------------------------------------------------------------
        //fitFormatTitle bold
        headline3: TextStyle(
          color : Colors.white70,
        ),

        //--------------------------------------------------------------------
        //fitFormatTitle normal
        headline4: TextStyle(
          color : Colors.white70,
        ),
        //--------------------------------------------------------------------
        //fitFormatTitle normal
        bodyText1: TextStyle(
          color : Colors.white70,
        ),
        //--------------------------------------------------------------------
        //fitFormatTitle normal
        bodyText2: TextStyle(
          color : Colors.white70,
        ),
        //--------------------------------------------------------------------
        //fitFormatTitle normal
        subtitle1: TextStyle(
          color : Colors.white70,
        ),
      ),
    );
  }
}