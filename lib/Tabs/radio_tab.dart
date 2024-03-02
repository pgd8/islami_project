// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami/Tabs/Radio_Tab_Components/radio_buttons.dart';
import 'package:islami/Tabs/Radio_Tab_Components/radio_logo.dart';
import 'package:islami/Tabs/Radio_Tab_Components/radio_title.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioLogo(),
        RadioTitle(),
        const RadioButtons(),
      ],
    );
  }
}
