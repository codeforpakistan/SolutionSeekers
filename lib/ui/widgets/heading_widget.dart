import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String heading;
  final double fontSize;
  final FontWeight fontWeight;

  HeadingWidget(
      {this.heading, this.fontSize = 24, this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          color: Colors.black, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
