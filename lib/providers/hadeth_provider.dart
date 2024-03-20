import 'package:flutter/Material.dart';
import 'package:flutter/services.dart';

class HadethProvider extends ChangeNotifier{
  List<String> content = [];

  void loadFile(int index) async {
    String hadeth =
    await rootBundle.loadString('assets/hadeth_files/h${index + 1}.txt');
    List<String> lines = hadeth.split("\n");
    content = lines;
    notifyListeners();
  }

}