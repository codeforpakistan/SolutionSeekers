import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String heading;
  final double fontSize;

  HeadingWidget({this.heading, this.fontSize = 24});

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          color: Colors.black, fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
