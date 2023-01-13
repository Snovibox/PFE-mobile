import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:florentine/l10n/l10n.dart';
import 'package:florentine/l10n/my_shared.dart';
import 'package:florentine/presentation/utils/local_provider.dart';
import 'package:florentine/presentation/router/app_router.dart';
import 'package:florentine/presentation/router/nav_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:florentine/presentation/widgets/my_theme_data.dart';
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

  Future<void> initWoosignal() async {
    await WooSignal.instance.init(appKey: "app_6fc9d2fdb99f35c0a9b1f0f4be25a5", debugMode: true);
  }

  @override
  Widget build(BuildContext context)  {
    initLanguage();
    return FutureBuilder(
        future: initWoosignal(),
        builder: (context, snapshoot) {
          if(snapshoot.connectionState == ConnectionState.waiting){
            return Container();
          }
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
    );
  }
}