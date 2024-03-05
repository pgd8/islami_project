// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/Tabs/hadeth_tab.dart';
import 'package:islami/Tabs/quran_tab.dart';
import 'package:islami/Tabs/radio_tab.dart';
import 'package:islami/Tabs/sebha_tab.dart';
import 'package:islami/Tabs/settings_tab.dart';

class MainScreen extends StatefulWidget {
  static const String routeName = 'MainScreen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,designSize: const Size(420, 870));
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bg3.png',
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_Name,
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            index = value;
            setState(() {});
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                    'assets/images/navigation_icons/icon_quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                    'assets/images/navigation_icons/icon_sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                    'assets/images/navigation_icons/icon_hadeth.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(
                    'assets/images/navigation_icons/icon_radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ],
        ),
        body: tabs[index],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    HadethTab(),
    RadioTab(),
    SettingsTab(),
  ];
}
