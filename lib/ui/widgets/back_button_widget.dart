import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final bool isLoginPage;
  final Color color;
  BackButtonWidget({this.isLoginPage = false, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (!isLoginPage) Navigator.of(context).pop();
      },
      textColor: Colors.black,
      color: color,
      child: Icon(
        Icons.arrow_back,
        size: 20,
      ),
      padding: EdgeInsets.all(16),
      shape: CircleBorder(),
    );
  }
}
