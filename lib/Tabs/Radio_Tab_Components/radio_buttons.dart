import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioButtons extends StatelessWidget {
  const RadioButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.skip_previous_rounded,
            color: Color(0xFFB7935F),
            size: 40,
          ),
          Icon(Icons.play_arrow_rounded, color: const Color(0xFFB7935F),
              size: 40.sp),
          Icon(Icons.skip_next_rounded, color: const Color(0xFFB7935F),
              size: 40.sp),
        ],
      ),
    );
  }
}
