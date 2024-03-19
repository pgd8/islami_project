import 'package:flutter/Material.dart';

class MyProvider extends ChangeNotifier{
  String languageCode = "en";
  var myThemeMode = ThemeMode.light;

  void changeLanguage(String code){
    languageCode = code;
    notifyListeners();
  }

  void changeMode(ThemeMode mode){
    myThemeMode = mode;
    notifyListeners();
  }
}