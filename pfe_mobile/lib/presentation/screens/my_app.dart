import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pfe_mobile/l10n/l10n.dart';
import 'package:pfe_mobile/l10n/my_shared.dart';
import 'package:pfe_mobile/presentation/utils/local_provider.dart';
import 'package:pfe_mobile/presentation/router/app_router.dart';
import 'package:pfe_mobile/presentation/router/nav_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pfe_mobile/presentation/widgets/my_theme_data.dart';
import 'package:provider/provider.dart';
import 'package:woosignal/woosignal.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  final AppRouter _appRouter = AppRouter();

  void initLanguage() async {
    Provider.of<LocaleProvider>(context, listen: false).setLocaleLanguage(L10n.getIntL10nValue(await ShareLanguage.getSharedLanguage()));
  }

  void initWoosignal() async {
    await WooSignal.instance.init(appKey: "app_090a61e4b2f3858d4ce462e3199a87", debugMode: true);
  }

  @override
  Widget build(BuildContext context)  {
    initLanguage();
    return AdaptiveTheme(
      initial: AdaptiveThemeMode.light,
      dark: MyThemeData.myDarkTheme(),
      light: MyThemeData.myLightTheme(),
      builder: (light, dark) {

        return MaterialApp(
          themeMode: ThemeMode.light,
          theme: light,
          darkTheme: dark,
          onGenerateRoute: _appRouter.onGeneratedRoute,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Provider.of<LocaleProvider>(context).getLocale,
          supportedLocales: L10n.all.map((e) => e.locale),
          home: Scaffold(
            body: SafeArea(
              maintainBottomViewPadding: true,
              child: Navigator(
                key: _navigatorKey,
                onGenerateRoute: _appRouter.onGeneratedRoute,
              ),
            ),
            bottomNavigationBar: NavBar(navigatorKey: _navigatorKey,),
          ),
          //color: myFond,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}