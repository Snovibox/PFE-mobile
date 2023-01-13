import 'package:pfe_mobile/l10n/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShareLanguage {

  static void intitSharedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('language', prefs.getInt('language')??1 );
  }

  static void setSharedLanguage(MyLanguage x) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('language', x.getIntValue());
  }

  static Future<int> getSharedLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value( prefs.getInt('language')??1 );
  }

}