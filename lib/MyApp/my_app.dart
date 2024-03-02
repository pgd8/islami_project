// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami/Screens/hadeth_screen.dart';
import 'package:islami/Screens/main_screen.dart';
import 'package:islami/Screens/sura_details_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Color(0xFFB7935F),
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black,
              showUnselectedLabels: false,
              selectedIconTheme: IconThemeData(
                size: 30,
              ))),
      debugShowCheckedModeBanner: false,
      title: 'Islami',
      initialRoute: MainScreen.routeName,
      routes: {
        MainScreen.routeName: (context) => MainScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethScreen.routeName: (context) => HadethScreen(),
      },
    );
  }
}
