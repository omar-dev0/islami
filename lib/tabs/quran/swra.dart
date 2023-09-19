import 'package:flutter/material.dart';

class Swra extends StatelessWidget {
  String swraName;
  String ayatNumber;

  Swra({required this.swraName, required this.ayatNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            swraName,
            style: TextStyle(
                fontFamily: 'ElMessiri-SemiBold',
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
          Expanded(
              child: SizedBox(
            width: double.infinity,
          )),
          Expanded(
              child: SizedBox(
            width: double.infinity,
          )),
          Text(
            ayatNumber,
            style: TextStyle(
                fontFamily: 'ElMessiri-SemiBold',
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
