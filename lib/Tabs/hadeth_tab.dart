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
          style: TextStyle(fontFamily: 'elmessiri'),
        ),
        QuranTabDiv(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethScreen.routeName,
                    arguments: HadethModel(index));
              },
              child: Text(
                'hadeth ${index+1}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontFamily: 'JFFlat'),
              ),
            ),
            itemCount: hadethNumber.length,
          ),
        )
      ],
    );
  }
}
