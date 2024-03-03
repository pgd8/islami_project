import 'package:flutter/material.dart';
import 'package:islami/Data_Classes/hadeth_model.dart';
import 'package:islami/Screens/hadeth_screen.dart';
import 'package:islami/Tabs/Hadeth_Tab_Content/hadeth_logo.dart';
import 'package:islami/Tabs/Quran_Tab_Components/quran_tab_div.dart';

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
        const Text(
          'Ahadeth',
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
                'hadeth ${index+1}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: 'JFFlat',fontSize: 25),
              ),
            ),
            itemCount: hadethNumber.length,
            separatorBuilder: (context, index) => const Divider(
              thickness: 1.25,
              color: Color(0xFFB7935F),
              endIndent: 50,
              indent: 50,
            ),
          ),
        )
      ],
    );
  }
}
