// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:islami/Tabs/Sebha_Tab_Components/sebha_logo.dart';
import 'package:islami/Tabs/Sebha_Tab_Components/sebha_screen_title.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;

  String title = 'Subhan Allah';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sebha_Logo(onSebhaClick, counter),
        SebhaTitle(),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(183, 147, 95, 0.57),
              borderRadius: BorderRadius.circular(25)),
          child: Text('$counter'),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFB7935F),
            ),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontFamily: 'JFFlat'),
            ),
            onPressed: () {
              if (counter >= 0 && counter <= 30 && title == 'Subhan Allah') {
                counter++;
                if (counter == 30) {
                  counter = 0;
                  title = 'Alhamdulellah';
                }
              }
              if (counter >= 0 && counter <= 30 && title == 'Alhamdulellah') {
                counter++;
                if (counter == 30) {
                  counter = 0;
                  title = 'Allah Akbar';
                }
              }
              if (counter >= 0 && counter <= 30 && title == 'Allah Akbar') {
                counter++;
                if (counter == 30) {
                  counter = 0;
                  title = 'Subhan Allah';
                }
              }
              setState(() {});
            },
          ),
        )
      ],
    );
  }

  void onSebhaClick(int counter) {
    if (this.counter >= 0 && this.counter <= 30 && title == 'Subhan Allah') {
      this.counter++;
      counter = this.counter;
      this.counter = counter;
      if (this.counter == 30) {
        this.counter = 0;
        title = 'Alhamdulellah';
      }
    }
    if (this.counter >= 0 && this.counter <= 30 && title == 'Alhamdulellah') {
      this.counter++;
      counter = this.counter;
      this.counter = counter;
      if (this.counter == 30) {
        this.counter = 0;
        title = 'Allah Akbar';
      }
    }
    if (this.counter >= 0 && this.counter <= 30 && title == 'Allah Akbar') {
      this.counter++;
      counter = this.counter;
      this.counter = counter;
      if (this.counter == 30) {
        this.counter = 0;
        title = 'Subhan Allah';
      }
    }
    setState(() {});
  }
}
