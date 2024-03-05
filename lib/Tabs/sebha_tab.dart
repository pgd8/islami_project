// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/Tabs/Sebha_Tab_Components/sebha_logo.dart';
import 'package:islami/Tabs/Sebha_Tab_Components/sebha_screen_title.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  String title = '';

  @override
  Widget build(BuildContext context) {
    if(title.isEmpty){
      title = AppLocalizations.of(context)!.subhan_Allah;
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 30.h),
      child: Column(
        children: [
          Sebha_Logo(onSebhaClick, counter),
          SebhaTitle(),
          Container(
            padding: const EdgeInsets.all(30).dg,
            margin: EdgeInsets.only(top: 20.h),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(183, 147, 95, 0.57),
                borderRadius: BorderRadius.circular(25.r)),
            child: Text('$counter',style: TextStyle(fontSize: 25.sp),),
          ),
          Container(
            margin:  EdgeInsets.only(top: 20.h),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB7935F),
              ),
              child: Text(
                title,
                style: TextStyle(color: Colors.white, fontFamily: 'JFFlat',fontSize: 30.sp),
              ),
              onPressed: () {
                if (counter >= 0 && counter <= 30 && title == AppLocalizations.of(context)!.subhan_Allah) {
                  counter++;
                  if (counter == 30) {
                    title = AppLocalizations.of(context)!.alhamdulellah;
                    counter = 0;
                  }
                }
                if (counter >= 0 && counter <= 30 && title == AppLocalizations.of(context)!.alhamdulellah) {
                  counter++;
                  if (counter == 30) {
                    counter = 0;
                    title = AppLocalizations.of(context)!.allah_Akbar;
                  }
                }
                if (counter >= 0 && counter <= 30 && title == AppLocalizations.of(context)!.allah_Akbar) {
                  counter++;
                  if (counter == 30) {
                    counter = 0;
                    title = AppLocalizations.of(context)!.subhan_Allah;
                  }
                }
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }

  void onSebhaClick(int counter) {
    if (this.counter >= 0 && this.counter <= 30 && title == 'Subhan Allah') {
      this.counter++;
      counter = this.counter;
      this.counter = counter;
      if (this.counter == 30) {
        this.counter = 0;
        title = 'Alhamdulellah';
      }
    }
    if (this.counter >= 0 && this.counter <= 30 && title == 'Alhamdulellah') {
      this.counter++;
      counter = this.counter;
      this.counter = counter;
      if (this.counter == 30) {
        this.counter = 0;
        title = 'Allah Akbar';
      }
    }
    if (this.counter >= 0 && this.counter <= 30 && title == 'Allah Akbar') {
      this.counter++;
      counter = this.counter;
      this.counter = counter;
      if (this.counter == 30) {
        this.counter = 0;
        title = 'Subhan Allah';
      }
    }
    setState(() {});
  }
}
