import 'package:flutter/Material.dart';

class MyProvider extends ChangeNotifier{
  String languageCode = "en";
  void changeLanguage(String code){
    languageCode = code;
    notifyListeners();
  }
}