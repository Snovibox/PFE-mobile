import 'package:flutter/widgets.dart';

class MyLanguage {
  String code;
  String language;
  Locale locale;

  MyLanguage({
    required this.code,
    required this.language,
    required this.locale,
  });

  int getIntValue(){
    switch (code) {
    case 'en' : return 1;
    case 'de' : return 2;
    case 'fr' : return 3;
      default : return 1;
    }
  }
}

class L10n {
  static final all = [
    MyLanguage(code: 'en', language:'English', locale: const Locale('en')),
    MyLanguage(code: 'de', language:'Deutsch', locale: const Locale('de')),
    MyLanguage(code: 'fr', language:'Français', locale: const Locale('fr')),
  ];

  static MyLanguage getL10nValue(String? x){ // english', 'deush', 'francais
    switch (x) {
      case 'English' : return MyLanguage(code: 'en', language:'English', locale: const Locale('en'));
      case 'Deutsch' : return MyLanguage(code: 'de', language:'Deutsch', locale: const Locale('de'));
      case 'Français' : return MyLanguage(code: 'fr', language:'Français', locale: const Locale('fr'));
      default : return MyLanguage(code: 'en', language:'English', locale: const Locale('en'));
    }
  }

  static MyLanguage getIntL10nValue(int x){
    switch (x) {
      case 1 : return MyLanguage(code: 'en', language:'English', locale: const Locale('en'));
      case 2 : return MyLanguage(code: 'de', language:'Deutsch', locale: const Locale('de'));
      case 3 : return MyLanguage(code: 'fr', language:'Français', locale: const Locale('fr'));
      default : return MyLanguage(code: 'en', language:'English', locale: const Locale('en'));
    }
  }
}