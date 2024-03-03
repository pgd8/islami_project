// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingTitle extends StatelessWidget {
  String title;

  SettingTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
        child: Text(title,
            style:  TextStyle(fontFamily: 'elmessiri', fontSize: 30.sp)));
  }
}
