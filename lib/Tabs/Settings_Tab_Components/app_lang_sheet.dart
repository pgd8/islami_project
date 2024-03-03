// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/MyApp/my_theme.dart';

class AppLanguageSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            context: context,
          elevation: 20,
          builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 15).r,
                  child:  Text("Language",style:  TextStyle(
                    fontFamily: 'elmessiri',
                    fontSize: 30.sp
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(

                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(top: 15,left: 15,).r,
                        child:  Text("English",style:  TextStyle(
                          fontFamily: 'elmessiri',
                          fontSize: 22.sp,
                        ),),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 15,right: 15).r,
                          child: const Icon(Icons.done, color: MyTheme.primaryColor,)
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(top: 15,left: 15).r,
                        child:  Text("Arabic",style:  TextStyle(
                          fontFamily: 'elmessiri',
                          fontSize: 22.sp,
                        ),),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 15,right: 15).r,
                          child: const Icon(Icons.done, color: Colors.black,)
                      ),
                    ),
                  ],
                ),
              ],
            ),);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFB7935F), width: 2)),
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(left: 20, bottom: 20, top: 20,right: 20).r,
        padding: const EdgeInsets.all(10).r,
        child:  Text('English',style: TextStyle(
          fontFamily: 'elmessiri',
          fontSize: 25.sp
        ),),
      ),
    );
  }
}
