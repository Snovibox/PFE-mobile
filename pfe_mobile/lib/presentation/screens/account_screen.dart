import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:pfe_mobile/l10n/l10n.dart';
import 'package:pfe_mobile/presentation/utils/local_provider.dart';
import 'package:pfe_mobile/presentation/widgets/message/error_image.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenScreenState();
}

class _AccountScreenScreenState extends State<AccountScreen> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 0),
              child: Image.asset(
                'assets/account_screen_header.png',
                width: MediaQuery.of(context).size.width,
                height: 300,
                errorBuilder: (context, error, stackTrace) {
                  return const ErrorImage();
                },
              ),
            ),
            Column(
              children: const [
                BtnSwitchTheme(),
                BtnSwitchLanguage(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class BtnSwitchLanguage extends StatelessWidget{
  const BtnSwitchLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shadowColor: Colors.white,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Theme.of(context).cardColor,
        child: Row(
          children: [
            //const Icon(Icons.language, color: Colors.black),
            Text(AppLocalizations.of(context)!.profile_languages),
            const Spacer(),
            DropdownButton(
              hint: Text(Provider.of<LocaleProvider>(context).getLocaleLanguage.language, style: TextStyle(color : Theme.of(context).textSelectionTheme.selectionColor),),
              items: L10n.all.map((e) => DropdownMenuItem<MyLanguage>(
                  child: Text(e.language, style: TextStyle(color: Theme.of(context).textSelectionTheme.selectionColor ),),
                  value: e,
                )
              ).toList(),
              onChanged: (MyLanguage? value){
                MyLanguage x = MyLanguage(code: 'en', language:'English', locale: const Locale('en'));
                if(value!=null) x = value;
                Provider.of<LocaleProvider>(context, listen: false).setLocaleLanguage(x);
              }
            )
          ],
        ),
      ),
    );
  }
}

class BtnSwitchTheme extends StatelessWidget  {
  const BtnSwitchTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shadowColor: Colors.white,
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        color: Theme.of(context).cardColor,
        child: Row(
          children: [
            Text(AppLocalizations.of(context)!.profile_theme),
            const Spacer(),
            GestureDetector(
              onTap: (){
                Provider.of<LocaleProvider>(context, listen: false).clickEvent();
                Provider.of<LocaleProvider>(context, listen: false).isClicked
                  ?AdaptiveTheme.of(context).setDark()
                  :AdaptiveTheme.of(context).setLight();
              },
              child : Provider.of<LocaleProvider>(context, listen: true).isClicked
                  ? Icon(Icons.nightlight_round, color: Theme.of(context).textSelectionTheme.selectionColor,)
                  : Icon(Icons.wb_sunny_outlined, color: Theme.of(context).textSelectionTheme.selectionColor,),
            ),
          ],
        ),
      ),
    );
  }
}