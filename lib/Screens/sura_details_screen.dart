// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/Data_Classes/sura_model.dart';
import 'package:islami/providers/sura_details_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'Sura Details';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(420, 870));
    SuraModel sura = ModalRoute.of(context)!.settings.arguments as SuraModel;
    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadFile(sura.index),
      builder: (context, child) {
         var suraProvider = Provider.of<SuraDetailsProvider>(context);
         return Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                sura.name,
              ),
              centerTitle: true,
            ),
            body: Container(
              margin: const EdgeInsets.only(bottom: 90, right: 20, left: 20).r,
              child: Card(
                color: const Color.fromRGBO(255, 255, 255, 0.7607843137254902),
                elevation: 30.r,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  child: ListView.separated(
                    itemBuilder: (context, index) => Text(
                      "${suraProvider.content[index]}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25.sp),
                    ),
                    separatorBuilder: (context, index) => Divider(
                      thickness: 1.5.h,
                      color: Color(0xFFB7935F),
                      indent: 50.w,
                      endIndent: 50.w,
                    ),
                    itemCount: suraProvider.content.length,
                  ),
                ),
              ),
            ),
        ),
        );
      },
    );
  }
}
