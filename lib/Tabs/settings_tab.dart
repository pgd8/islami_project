// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami/Tabs/Settings_Tab_Components/title.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SettingTitle('Language'),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFFB7935F),width: 2)
              ),
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 25,bottom: 20,top: 20),
              padding: const EdgeInsets.all(10),
              child: const Text('English'),
            ),
          ),
          SettingTitle('Mode'),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFB7935F),width: 2)
              ),
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 25,bottom: 20,top: 20),
              padding: const EdgeInsets.all(10),
              child: const Text('Light Mode'),
            ),
          ),
        ],
      ),
    );
  }
}
