import 'package:faryaad/screens/approve_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RequestScreen extends StatefulWidget {
  @override
  _RequestScreenState createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: GestureDetector(
      child: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Container(
                child: SvgPicture.asset('assets/images/newsfeed_request.svg')),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => ApproveScreen()));
      },
    )));
  }
}
