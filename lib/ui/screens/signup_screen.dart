import 'package:faryaad/ui/screens/user_type_selection_screen.dart';
import 'package:faryaad/utils/global.dart';
import 'package:faryaad/ui/widgets/circular_button_widget.dart';
import 'package:faryaad/ui/widgets/circular_input_widget.dart';
import 'package:faryaad/ui/widgets/heading_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              child: SvgPicture.asset('assets/images/background.svg'),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    heightBetweenWidgets(),
                    heightBetweenWidgets(),
                    HeadingWidget(heading: "Create your account"),
                    heightBetweenWidgets(),
                    CircularButtonWidget(
                      leadingWidget:
                          SvgPicture.asset('assets/images/facebook_icon.svg'),
                      text: "CONTINUE WITH FACEBOOK",
                    ),
                    smallHeightBetweenWidgets(),
                    CircularButtonWidget(
                      leadingWidget:
                          SvgPicture.asset('assets/images/google_icon.svg'),
                      text: "CONTINUE WITH GOOGLE",
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                    heightBetweenWidgets(),
                    heightBetweenWidgets(),
                    Text(
                      "OR LOGIN WITH EMAIL",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w500),
                    ),
                    heightBetweenWidgets(),
                    heightBetweenWidgets(),
                    CircularInputWidget(
                      hintText: "Full Name",
                      hintTextColor: Colors.grey,
                    ),
                    smallHeightBetweenWidgets(),
                    CircularInputWidget(
                      hintText: "Email Address",
                      hintTextColor: Colors.grey,
                    ),
                    smallHeightBetweenWidgets(),
                    CircularInputWidget(
                      hintText: "Password",
                      hintTextColor: Colors.grey,
                    ),
                    smallHeightBetweenWidgets(),
                    CircularInputWidget(
                      hintText: "Confirm Password",
                      hintTextColor: Colors.grey,
                    ),
                    heightBetweenWidgets(),
                    CircularButtonWidget(
                      text: "GET STARTED",
                      color: ThemeConstants.background,
                      press: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SelectUserTypeScreen()));
                      },
                    ),
                    heightBetweenWidgets(),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                    heightBetweenWidgets(),
                    heightBetweenWidgets(),
                    heightBetweenWidgets(),
                    RichText(
                        text: TextSpan(
                            text: "ALREADY HAVE AN ACCOUNT?",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                            children: <InlineSpan>[
                          TextSpan(
                              text: ' LOGIN',
                              style: TextStyle(
                                  color: ThemeConstants.background,
                                  fontWeight: FontWeight.w400),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () => Navigator.of(context).pop())
                        ]))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
