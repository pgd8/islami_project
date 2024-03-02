// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami/MyApp/my_theme.dart';
import 'package:islami/Screens/hadeth_screen.dart';
import 'package:islami/Screens/main_screen.dart';
import 'package:islami/Screens/sura_details_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
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
