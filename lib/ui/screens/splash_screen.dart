import 'dart:async';

import 'package:faryaad/ui/screens/login_screen.dart';
import 'package:faryaad/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    waitAndNavigate();

    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        color: ThemeConstants.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            SizedBox(
              height: 10,
            ),
            Text("Faryaad",
                style: TextStyle(color: Colors.white, fontSize: 22)),
          ],
        ),
      ),
    ));
  }

  void waitAndNavigate() {
    Timer(
        Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }
}
