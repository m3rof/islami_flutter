
import 'package:flutter/material.dart';
import 'package:islami/home/provider/app_provider.dart';
import 'package:islami/home/settings/Language_bottom_sheet.dart';
import 'package:provider/provider.dart';


class Settings extends StatefulWidget {

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Language'),
        InkWell(onTap: (){
          ShowLanguageBottomSheet();
        },
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              border: Border.all(color: Color(0xffB7935F))
            ),
            child: Text(provider.appLanguage=='en'?'English':'العربية',style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontSize: 18
            ),),
          ),
        )
      ],
    );
  }

  void ShowLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder:(context) => LanguageBottomSheet(),);
  }
}


