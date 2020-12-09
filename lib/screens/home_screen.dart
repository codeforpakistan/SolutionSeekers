import 'package:faryaad/screens/request_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: GestureDetector(
      child: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Container(child: Image.asset('assets/images/newsfeed1.png')),
            Container(child: Image.asset('assets/images/newsfeed2.png')),
            Container(child: SvgPicture.asset('assets/images/tabs.png')),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => RequestScreen()));
      },
    )));
  }
}
