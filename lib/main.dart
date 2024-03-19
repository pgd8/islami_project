// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/MyApp/my_theme.dart';
import 'package:islami/Screens/hadeth_screen.dart';
import 'package:islami/Screens/main_screen.dart';
import 'package:islami/Screens/sura_details_screen.dart';
import 'package:islami/providers/my_provider.dart';
import 'package:provider/provider.dart';


void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider<MyProvider>(
    create: (context) => MyProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return ScreenUtilInit(
      designSize: const Size(412, 871),
      ensureScreenSize: true,
      minTextAdapt: true,
      builder: (_, child) => MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(provider.languageCode),
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




