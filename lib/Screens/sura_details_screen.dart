import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Data_Classes/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura Details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> content = [];

  @override
  Widget build(BuildContext context) {
    SuraModel sura = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if(content.isEmpty){
      loadFile(sura.index);
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            sura.name,
            style: const TextStyle(fontFamily: 'elmessiri'),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(bottom: 90,right: 20,left: 20),
          child: Card(
            color: const Color.fromRGBO(255, 255, 255, 0.7607843137254902),
            elevation: 20,
            child: ListView.builder(
                itemBuilder: (context, index) =>
                    Text(content[index],textAlign: TextAlign.center,),
              itemCount: content.length,
              ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String suraContent =
        await rootBundle.loadString('assets/quran_files/${index+1}.txt');
    List<String> lines = suraContent.split("\n");
    content = lines;
    setState(() {});
  }
}
