import 'package:flutter/material.dart';
import 'package:pfe_mobile/presentation/utils/color.dart';
import 'package:woosignal/models/response/products.dart';

class Tags extends StatelessWidget {
  final List<Tag> allTags ;
  Tags({Key? key, required this.allTags}) : super(key: key);

  toText(){
    String ret = allTags.isEmpty?'':allTags[0].name??'';
    for(int i=1; i< allTags.length; i++){
      String temp = allTags[i].name??'';
      ret = ret+" | "+temp;
    }
    return ret;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        toText(),
        style: TextStyle(
          color: myGreen
        ),
      ),
    );
  }
}
