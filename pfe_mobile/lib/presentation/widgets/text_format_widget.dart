import 'package:flutter/material.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';

class TextFormatWidget {

  static TextIntroBtn(String text){
    return Text(
        text,
        style: TextStyle(
          color: myGreen,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        )
    );
  }
  static RichText format(String text, TextStyle? theme, double size, bool isBold){
    return RichText(
      text: TextSpan(
        style : theme,
        children: [
          TextSpan(text: text,
            style: TextStyle(
              fontSize: size,
              fontWeight: isBold?FontWeight.w500:FontWeight.normal,
            )
          )
        ]
      ),
    );
  }


  static RichText fitFormatTitle(String text, TextStyle? theme, double size, bool isBold, int maxLine){
    return RichText(
      text: TextSpan(
        style : theme,
        children: [
          TextSpan(text: text, style : TextStyle(
            fontSize: size,
            fontWeight: isBold?FontWeight.w500:FontWeight.normal,
          ))
        ]
      ),
      overflow: TextOverflow.visible,
      maxLines: maxLine,
    );
  }

  static RichText fitFormatContent(String text, TextStyle? theme, double size, bool isBold, int maxLine){
    return RichText(
      text: TextSpan(
          style : theme,
          children: [
            TextSpan(text: text, style : TextStyle(
              fontSize: size,
              fontWeight: isBold?FontWeight.w500:FontWeight.normal,
            ))
          ]
      ),
      overflow: TextOverflow.visible,
      maxLines: maxLine,
    );
  }
}

