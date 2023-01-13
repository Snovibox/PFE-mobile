import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoriteListItem{
  String idProduct;

  FavoriteListItem({
    required this.idProduct,
  });
}

class ShareFavoriteList {

  static void intitSharedFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('favoriteList',[]);
  }

  static void setSharedFavorite(FavoriteListItem x) async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? efaAo = prefs.getStringList('favoriteList');

    efaAo ??= []; // raha ohatra ka null ilay efaAo de omena tableau vide

    // condition oe efa ao ve sa tsy ilay x
    // raha mbola tsy ao de ampidirina ao
    // raha efa ao de esorina ao
    if(efaAo.contains(x.idProduct)){
      efaAo.removeWhere((element) => element==x.idProduct );
    } else {
      efaAo?.add(x.idProduct);
    }

    print(efaAo.length);

    prefs.setStringList('favoriteList', efaAo!);
  }

  static Future<List<String>> getSharedFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    List<String>? alefa = prefs.getStringList('favoriteList') ;

    if(alefa == null){
      return [];
    }

    List<String> alefa2 = alefa;

    return alefa2;
  }

}