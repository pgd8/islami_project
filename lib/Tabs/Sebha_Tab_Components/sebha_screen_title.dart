// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTitle extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Text(
          AppLocalizations.of(context)!.tasbeh_Count,
          style: TextStyle(fontFamily: 'elmessiri',fontSize: 30.sp),
        ));
  }
}
