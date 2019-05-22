import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget
{
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
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.blue
        ),
        margin: EdgeInsets.only(right: 10.0, left: 50, bottom: 5, top: 5),
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Column(children: <Widget>[
          Text(text, style: TextStyle(
              color: Colors.white,
              fontSize: 15.0
          ),),
          Text( '11:24', style: TextStyle(
              color: Colors.white,
              fontSize: 14.0
          ),),
        ],),
      ),
    );
  }
}