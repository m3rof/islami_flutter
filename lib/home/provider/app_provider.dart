
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier {
  String appLanguage='en';
  void changeLanguage(String languageCode)async{
    appLanguage=languageCode;
    notifyListeners();
  }
}