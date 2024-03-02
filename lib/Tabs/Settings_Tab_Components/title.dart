// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SettingTitle extends StatelessWidget {
  String title;

  SettingTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
        child: Text(title,
            style: const TextStyle(fontFamily: 'elmessiri', fontSize: 15)));
  }
}
