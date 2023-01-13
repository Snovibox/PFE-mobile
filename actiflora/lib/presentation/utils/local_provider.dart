import 'package:flutter/material.dart';
import 'package:pfe_mobile/l10n/l10n.dart';
import 'package:pfe_mobile/l10n/my_shared.dart';

class LocaleProvider extends ChangeNotifier{
  MyLanguage _localeLanguage = MyLanguage(code: 'en', language:'English', locale: const Locale('en'));

  MyLanguage get getLocaleLanguage => _localeLanguage;

  Locale get getLocale => _localeLanguage.locale;

  void setLocaleLanguage(MyLanguage locale){
    ShareLanguage.setSharedLanguage(locale);
    _localeLanguage = locale;
    notifyListeners();
  }

  //-------------------------------------------------------------------------------------------------
  bool isClicked = false;

  void clickEvent() {
    isClicked = !isClicked;
    notifyListeners();
  }

}