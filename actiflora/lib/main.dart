import 'package:flutter/material.dart';
import 'package:pfe_mobile/presentation/screens/init_slideer_intro.dart';
import 'package:pfe_mobile/presentation/screens/my_app.dart';
import 'package:pfe_mobile/presentation/utils/local_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woosignal/woosignal.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  
  await WooSignal.instance.init(appKey: "app_090a61e4b2f3858d4ce462e3199a87", debugMode: true);
  if (prefs.getInt('language')==null) {
    runApp(
        ChangeNotifierProvider(create: (context) => LocaleProvider(), child: const Init()),
    );
  } else {
    runApp(
        ChangeNotifierProvider(
            create: (context) => LocaleProvider(), child: const MyApp())
    );
  }

}