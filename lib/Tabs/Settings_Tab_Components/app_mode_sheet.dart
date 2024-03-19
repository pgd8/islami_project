// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/MyApp/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppModeSheet extends StatefulWidget {
  @override
  State<AppModeSheet> createState() => _AppModeSheetState();
}

class _AppModeSheetState extends State<AppModeSheet> {
  bool isLight = true;

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
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Text(
                  AppLocalizations.of(context)!.mode,
                  style: TextStyle(
                    fontFamily: 'elmessiri',
                    fontSize: 30.sp,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isLight = true;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(top: 15, left: 15).r,
                        child: Text(
                          AppLocalizations.of(context)!.light,
                          style: TextStyle(
                              fontFamily: 'elmessiri',
                              fontSize: 22.sp,
                              color: isLight
                                  ? MyTheme.primaryColor
                                  : Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 15, right: 15).r,
                          child:  Icon(
                            Icons.done,
                            color: isLight? MyTheme.primaryColor : Colors.black,
                          )),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: (){
                  isLight = false;
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(top: 15, left: 15).r,
                        child: Text(
                          AppLocalizations.of(context)!.dark,
                          style: TextStyle(
                            fontFamily: 'elmessiri',
                            fontSize: 22.sp,
                            color: isLight? Colors.black :MyTheme.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 15, right: 15).r,
                          child:  Icon(
                            Icons.done,
                            color: isLight? Colors.black :MyTheme.primaryColor,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFB7935F), width: 2)),
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.all(20).r,
        padding: const EdgeInsets.all(10).r,
        child: Text(
          'Light Mode',
          style: TextStyle(fontFamily: 'elmessiri', fontSize: 25.sp),
        ),
      ),
    );
  }
}
