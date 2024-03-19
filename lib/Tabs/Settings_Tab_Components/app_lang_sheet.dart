// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/MyApp/my_theme.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppLanguageSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
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
                child: Text(
                  AppLocalizations.of(context)!.language,
                  style: TextStyle(fontFamily: 'elmessiri', fontSize: 25.sp),
                ),
              ),
              InkWell(
                onTap: () {
                  provider.changeLanguage("en");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(
                          top: 15,
                          left: 15,
                        ).r,
                        child: Text(
                          "English",
                          style: TextStyle(
                              fontFamily: 'elmessiri',
                              fontSize: 22.sp,
                              color: provider.languageCode == "en"
                                  ? MyTheme.primaryColor
                                  : Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 15, right: 15).r,
                          child: Icon(
                            Icons.done,
                            color: provider.languageCode == "en"
                                ? MyTheme.primaryColor
                                : Colors.black,
                          )),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  provider.changeLanguage("ar");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(top: 15, left: 15).r,
                        child: Text(
                          "Arabic",
                          style: TextStyle(
                              fontFamily: 'elmessiri',
                              fontSize: 22.sp,
                              color: provider.languageCode == "ar"
                                  ? MyTheme.primaryColor
                                  : Colors.black),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                          alignment: Alignment.bottomRight,
                          margin: const EdgeInsets.only(top: 15, right: 15).r,
                          child: Icon(
                            Icons.done,
                            color: provider.languageCode == "ar"
                                ? MyTheme.primaryColor
                                : Colors.black
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
        margin:
            const EdgeInsets.only(left: 20, bottom: 20, top: 20, right: 20).r,
        padding: const EdgeInsets.all(10).r,
        child: Text(
          'English',
          style: TextStyle(fontFamily: 'elmessiri', fontSize: 25.sp),
        ),
      ),
    );
  }
}
