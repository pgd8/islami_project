// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/Tabs/Settings_Tab_Components/app_lang_sheet.dart';
import 'package:islami/Tabs/Settings_Tab_Components/app_mode_sheet.dart';
import 'package:islami/Tabs/Settings_Tab_Components/title.dart';

class SettingsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            height: 0.05.sh,
          ),
          SettingTitle('Language'),
          AppLanguageSheet(),
          SettingTitle('Mode'),
          AppModeSheet(),
        ],
      ),
    );
  }
}
