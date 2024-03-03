// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/Data_Classes/hadeth_model.dart';

class HadethScreen extends StatefulWidget {
  static const String routeName = 'Hadeth Details';

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<String> content = [];

  @override
  Widget build(BuildContext context) {
    HadethModel hadethModel =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
    if (content.isEmpty) {
      loadFile(hadethModel.hadethNumber);
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('hadeth ${hadethModel.hadethNumber + 1}',),
        ),
        body: Container(
          margin: const EdgeInsets.only(bottom: 90,right: 20,left: 20).r,
          child: Card(
            color: const Color.fromRGBO(255, 255, 255, 0.7607843137254902),
            elevation: 20,
            child: ListView.builder(
              itemBuilder: (context, index) => Text(
                content[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.sp
                ),
              ),
              itemCount: content.length,
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String hadeth =
        await rootBundle.loadString('assets/hadeth_files/h${index + 1}.txt');
    List<String> lines = hadeth.split("\n");
    content = lines;
    setState(() {});
  }
}
