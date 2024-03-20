// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/Data_Classes/hadeth_model.dart';
import 'package:islami/providers/hadeth_provider.dart';
import 'package:provider/provider.dart';

class HadethScreen extends StatelessWidget {
  static const String routeName = 'Hadeth Details';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize: const Size(420, 870));
    HadethModel hadethModel =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
    return ChangeNotifierProvider(
      create: (context) => HadethProvider()..loadFile(hadethModel.hadethNumber),
      builder: (context, child) {
        var hadeth = Provider.of<HadethProvider>(context);
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
                    hadeth.content[index],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25.sp
                    ),
                  ),
                  itemCount: hadeth.content.length,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
