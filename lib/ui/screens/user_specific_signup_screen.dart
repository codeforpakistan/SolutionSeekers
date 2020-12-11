import 'package:faryaad/ui/widgets/back_button_widget.dart';
import 'package:faryaad/ui/widgets/circular_input_widget.dart';
import 'package:faryaad/utils/global.dart';
import 'package:faryaad/ui/widgets/circular_button_widget.dart';
import 'package:flutter/material.dart';

class UserSpecificSignupScreen extends StatefulWidget {
  final UserType currentSelection;

  UserSpecificSignupScreen({this.currentSelection});

  @override
  _UserSpecificSignupScreenState createState() =>
      _UserSpecificSignupScreenState();
}

class _UserSpecificSignupScreenState extends State<UserSpecificSignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Container(
            color: ThemeConstants.background.withOpacity(0.2),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20, left: 10),
                        alignment: Alignment.topLeft,
                        child: BackButtonWidget()),
                    Container(
                      padding: EdgeInsets.all(16),
                      alignment: Alignment.center,
                      child: Image.asset(getImageAccordingToUserType()),
                    ),
                    Text(
                      "Sign up via",
                      style: TextStyle(
                          color: ThemeConstants.background, fontSize: 20),
                    ),
                    Text(
                      getTextAccordingToUserType(),
                      style: TextStyle(
                          color: ThemeConstants.background,
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    ),
                    heightBetweenWidgets(),
                    heightBetweenWidgets(),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              heightBetweenWidgets(),
              getScreenAccordingToUserType(),
              heightBetweenWidgets(),
              CircularButtonWidget(
                text: "SIGN UP",
                press: () {},
              )
            ],
          ),
        ],
      ),
    ));
  }

  Widget getNGOFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        heightBetweenWidgets(),
        CircularInputWidget(
          hintText: "Enter account details",
          hintTextColor: Colors.grey,
        ),
        smallHeightBetweenWidgets(),
        CircularInputWidget(
          hintText: "Enter license details",
          hintTextColor: Colors.grey,
        ),
      ],
    );
  }

  Widget getDoctorFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        heightBetweenWidgets(),
        CircularInputWidget(
          hintText: "Email address",
          hintTextColor: Colors.grey,
        ),
        smallHeightBetweenWidgets(),
        CircularInputWidget(
          hintText: "Password",
          hintTextColor: Colors.grey,
        ),
      ],
    );
  }

  Widget getDonorFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        heightBetweenWidgets(),
        CircularInputWidget(
          hintText: "Email address",
          hintTextColor: Colors.grey,
        ),
        smallHeightBetweenWidgets(),
        CircularInputWidget(
          hintText: "Password",
          hintTextColor: Colors.grey,
        ),
      ],
    );
  }

  Widget getScreenAccordingToUserType() {
    Widget toReturn = Container();
    switch (widget.currentSelection) {
      case UserType.NGO:
        return getNGOFields();
        break;
      case UserType.DOCTOR:
        return getDoctorFields();
        break;
      case UserType.DONOR:
        return getDonorFields();
        break;
      default:
        return toReturn;
    }
  }

  String getTextAccordingToUserType() {
    String toReturn = "NONE";
    switch (widget.currentSelection) {
      case UserType.NGO:
        toReturn = "NGO";
        break;
      case UserType.DOCTOR:
        toReturn = "DOCTOR";
        break;
      case UserType.DONOR:
        toReturn = "DONOR";
        break;
      default:
        toReturn = "NONE";
        break;
    }
    return toReturn;
  }

  String getImageAccordingToUserType() {
    String toReturn = 'assets/images/type_doctor.png';
    switch (widget.currentSelection) {
      case UserType.NGO:
        toReturn = 'assets/images/type_ngo.png';
        break;
      case UserType.DOCTOR:
        toReturn = 'assets/images/type_doctor.png';
        break;
      case UserType.DONOR:
        toReturn = 'assets/images/type_donor.png';
        break;
      default:
        toReturn = 'assets/images/type_doctor.png';
        break;
    }
    return toReturn;
  }
}
