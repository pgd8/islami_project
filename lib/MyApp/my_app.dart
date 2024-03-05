// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/MyApp/my_theme.dart';
import 'package:islami/Screens/hadeth_screen.dart';
import 'package:islami/Screens/main_screen.dart';
import 'package:islami/Screens/sura_details_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 871),
      ensureScreenSize: true,
      minTextAdapt: true,
      builder: (_, child) => MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale("en"),
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
      ),
    );
  }
}
