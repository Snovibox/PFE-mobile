import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isClicked = false;

  void clickEvent() {
    isClicked = !isClicked;
    notifyListeners();
  }
}