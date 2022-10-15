
import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  String appLanguage='en';
  void changeLanguage(String languageCode){
    appLanguage=languageCode;
    notifyListeners();
  }
}