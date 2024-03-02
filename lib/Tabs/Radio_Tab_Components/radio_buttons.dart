import 'package:flutter/material.dart';

class RadioButtons extends StatelessWidget {
  const RadioButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.skip_previous_rounded,
            color: Color(0xFFB7935F),
            size: 40,
          ),
          Icon(Icons.play_arrow_rounded, color: Color(0xFFB7935F), size: 40),
          Icon(Icons.skip_next_rounded, color: Color(0xFFB7935F), size: 40),
        ],
      ),
    );
  }
}
