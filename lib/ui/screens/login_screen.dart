import 'package:faryaad/ui/screens/home_screen.dart';
import 'package:faryaad/ui/screens/signup_screen.dart';
import 'package:faryaad/ui/widgets/back_button_widget.dart';
import 'package:faryaad/utils/global.dart';
import 'package:faryaad/ui/widgets/circular_button_widget.dart';
import 'package:faryaad/ui/widgets/circular_input_widget.dart';
import 'package:faryaad/ui/widgets/heading_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            ListView(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 20, left: 10, bottom: 20),
                    alignment: Alignment.topLeft,
                    child: BackButtonWidget(
                      isLoginPage: true,
                    )),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      HeadingWidget(heading: "Welcome Back!"),
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
                        hintText: "Email address",
                        hintTextColor: Colors.grey,
                      ),
                      smallHeightBetweenWidgets(),
                      CircularInputWidget(
                        hintText: "Password",
                        hintTextColor: Colors.grey,
                      ),
                      heightBetweenWidgets(),
                      CircularButtonWidget(
                        text: "LOGIN",
                        color: ThemeConstants.background,
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomeScreen()));
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
                              text: "DON'T HAVE AN ACCOUNT?",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                              children: <InlineSpan>[
                            TextSpan(
                                text: ' SIGN UP',
                                style: TextStyle(
                                    color: ThemeConstants.background,
                                    fontWeight: FontWeight.w400),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              SignupScreen())))
                          ]))
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
