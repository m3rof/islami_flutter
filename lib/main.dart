

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:islami/Home/Home.dart';
import 'package:islami/home/hadeth/Hadeth_Details.dart';
import 'package:islami/home/provider/app_provider.dart';
import 'package:islami/suraDetails/SuraDetails.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(
      ChangeNotifierProvider(create:(context) {
        return AppProvider();
      },
        child: MyApp()
      ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    var provider=Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar')
      ],
      locale: Locale('${provider.appLanguage}'),
      routes: {
        Home.Route_Home:(context)=>Home(),
        SuraDetails.Route_name:(context)=>SuraDetails(),
        HadethDetails.HadethDetails_Route:(context)=>HadethDetails()
      },
      initialRoute: Home.Route_Home,
    );
  }
}
