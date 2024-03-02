import 'package:flutter/material.dart';
import 'package:islami/Tabs/Sebha_Tab_Components/sebha_body_logo.dart';

class Sebha_Logo extends StatelessWidget {
  Function onSebhaClick;
  int counter;
  Sebha_Logo(this.onSebhaClick,this.counter);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset('assets/images/sebha_head.png'),
        ),
        SebhaBodyLogo(onSebhaClick,0),
      ],
    );
  }
}
