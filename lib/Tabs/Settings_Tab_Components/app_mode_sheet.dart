// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:islami/MyApp/my_theme.dart';

class AppModeSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          elevation: 20,
          builder: (context) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: const Text("Mode",style:  TextStyle(
                  fontFamily: 'elmessiri',
                ),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(top: 15,left: 15),
                      child: const Text("Light",style:  TextStyle(
                        fontFamily: 'elmessiri',
                        fontSize: 12,
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.only(top: 15,right: 15),
                      child: const Icon(Icons.done, color: MyTheme.primaryColor,)
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      margin: const EdgeInsets.only(top: 15,left: 15),
                      child: const Text("Dark",style:  TextStyle(
                        fontFamily: 'elmessiri',
                        fontSize: 12,
                      ),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomRight,
                      margin: const EdgeInsets.only(top: 15,right: 15),
                      child: const Icon(Icons.done, color: Colors.black,)
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFB7935F), width: 2)),
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(left: 25, bottom: 20, top: 20),
        padding: const EdgeInsets.all(10),
        child: const Text('Light Mode'),
      ),
    );
  }
}
