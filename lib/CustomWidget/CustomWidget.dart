import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  String text;

  CustomWidget(String text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: Colors.blue),
        margin: EdgeInsets.only(right: 10.0, left: 50, bottom: 5, top: 5),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(text: text, children: <TextSpan>[
            TextSpan(text: " 11:11", style: TextStyle())
          ])
        ])),
      ),
    );
  }
}
