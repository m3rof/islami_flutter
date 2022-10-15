
import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/Ahadeth.dart';
import 'package:islami/home/quran/Quran.dart';
import 'package:islami/home/radio/RadioIslami.dart';
import 'package:islami/home/sebha/Sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'settings/Settings.dart';
class Home extends StatefulWidget {
 static String Route_Home='home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image:AssetImage('assets/images/default_bg.png'),
        fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,elevation: 0,
          title:Text(AppLocalizations.of(context)!.islami
            ,style: TextStyle(color: Colors.black,fontSize: 25),) ,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Color(0xffB7935F)),
          child: BottomNavigationBar(
            onTap: (index){
              currentindex=index;
              setState(() {});
            },
            currentIndex:currentindex,
            selectedItemColor: Color(0xff242424),
            iconSize: 30,
            items: [
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.quran,icon:ImageIcon(AssetImage('assets/images/icon_quran.png')) ),
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.ahadeth,icon:ImageIcon(AssetImage('assets/images/icon_hadeth.png')) ),
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.sebha,icon:ImageIcon(AssetImage('assets/images/icon_sebha.png')) ),
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.radio,icon:ImageIcon(AssetImage('assets/images/icon_radio.png')) ),
              BottomNavigationBarItem(label:AppLocalizations.of(context)!.settings,icon:Icon(Icons.settings) ),
            ],
          ),
        ),
        body: GetBody(),
      ),
    );
  }
  Widget GetBody(){
    if (currentindex==0){
      return Quran();
    }else if(currentindex==1){
      return Ahadeth();
    }
    else if(currentindex==2){
      return Sebha();
    }else if(currentindex==3){
      return RadioIslami();
    }
    else{
      return Settings();
    }
  }
}
