import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final bool isLoginPage;
  BackButtonWidget({this.isLoginPage = false});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        if (!isLoginPage) Navigator.of(context).pop();
      },
      textColor: Colors.black,
      color: Colors.white,
      child: Icon(
        Icons.arrow_back,
        size: 20,
      ),
      padding: EdgeInsets.all(16),
      shape: CircleBorder(),
    );
  }
}
