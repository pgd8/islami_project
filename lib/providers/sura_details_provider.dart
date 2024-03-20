import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier {
  List<String> content = [];

  void loadFile(int index) async {
    String suraContent =
        await rootBundle.loadString('assets/quran_files/${index + 1}.txt');
    List<String> lines = suraContent.split("\n");
    content = lines;
    notifyListeners();
  }
}
