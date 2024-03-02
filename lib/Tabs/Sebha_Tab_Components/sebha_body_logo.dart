// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class SebhaBodyLogo extends StatefulWidget {
  Function onClick;
  int counter;

  SebhaBodyLogo(this.onClick, this.counter);

  @override
  State<SebhaBodyLogo> createState() => _SebhaBodyLogoState();
}

class _SebhaBodyLogoState extends State<SebhaBodyLogo> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick(widget.counter);
        setState(() {
          turns += 1 / 25;
        });
      },
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      child: AnimatedRotation(
        curve: Curves.decelerate,
        turns: turns,
        duration: const Duration(milliseconds: 500),
        child: Container(
          margin: const EdgeInsets.only(top: 55),
          alignment: Alignment.center,
          child: Image.asset('assets/images/body_sebha.png'),
        ),
      ),
    );
  }
}
