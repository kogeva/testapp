import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  String text;
  RichText richText;

  CustomWidget(String text) {
    this.text = text;

    this.richText = RichText(
        text: TextSpan(children: <TextSpan>[
      TextSpan(text: text, children: <TextSpan>[
        TextSpan(
          text: " 11:12",
          style: TextStyle(),
        )
      ])
    ]));
  }

  @override
  Widget build(BuildContext context) {
    this.richText.toStringShallow();

    Container container = Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.blue),
      margin: EdgeInsets.only(right: 10.0, left: 50, bottom: 5, top: 5),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: this.richText,
    );

    Stack stack = Stack(
      children: <Widget>[richText],
    );

    return Align(
      alignment: Alignment.topRight,
      child: container,
    );
  }
}

class CustomCard extends StatelessWidget {
  final String msg;
  final String additionalInfo;

  CustomCard({this.msg = "hello world", this.additionalInfo = ""});

  TextStyle style = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: 15.5,
      letterSpacing: 0.3);

  @override
  Widget build(BuildContext context) {
    style = Theme.of(context).textTheme.subtitle.merge(style);

    Container card = Container(
      decoration: new BoxDecoration(
          borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
          color: Colors.blueGrey[500]),
      margin: EdgeInsets.only(right: 10.0, left: 50, bottom: 5, top: 5),
      child: Stack(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 8, right: 8, bottom: 8),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  //real message
                  TextSpan(
                    text: msg + "  ",
                    style: style,
                  ),

                  //fake additionalInfo as placeholder
                  TextSpan(
                      text: additionalInfo,
                      style:
                          TextStyle(fontSize: 12.0, color: Color.fromRGBO(255, 255, 255, 0))),
                ],
              ),
            ),
          ),

          //real additionalInfo
          Positioned(
            child: Text(
              additionalInfo,
              style: TextStyle(
                  fontSize: 12.0, color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            right: 10.0,
            bottom: 5.0,
          )
        ],
      ),
    );

    return Align(
      alignment: Alignment.topRight,
      child: card,
    );
  }
}
