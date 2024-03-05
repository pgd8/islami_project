// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/Data_Classes/hadeth_model.dart';
import 'package:islami/Screens/hadeth_screen.dart';
import 'package:islami/Tabs/Hadeth_Tab_Content/hadeth_logo.dart';
import 'package:islami/Tabs/Quran_Tab_Components/quran_tab_div.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethTab extends StatelessWidget {
  List<int> hadethNumber = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 50; i++) {
      hadethNumber.add(i);
    }
    return Column(
      children: [
        HadethLogo(),
        QuranTabDiv(),
         Text(
          AppLocalizations.of(context)!.ahadeth,
          style: TextStyle(fontFamily: 'elmessiri',fontSize: 25),
        ),
        QuranTabDiv(),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethScreen.routeName,
                    arguments: HadethModel(index));
              },
              child: Text(
                '${AppLocalizations.of(context)!.hadeth} ${index+1}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: 'JFFlat',fontSize: 25),
              ),
            ),
            itemCount: hadethNumber.length,
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5.h,
              color: const Color(0xFFB7935F),
              indent: 50.w,
              endIndent: 50.w,
            ),
          ),
        )
      ],
    );
  }
}
