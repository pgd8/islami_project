// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioTitle extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30).h,
        child: Text(
          "Eza'a El Quran AL Karim",
          style: TextStyle(fontFamily: 'elmessiri',fontSize: 30.sp),
        ));
  }
}
