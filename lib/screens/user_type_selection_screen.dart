import 'package:faryaad/screens/home_screen.dart';
import 'package:faryaad/utils/global.dart';
import 'package:faryaad/widgets/circular_button_widget.dart';
import 'package:faryaad/widgets/heading_widget.dart';
import 'package:faryaad/widgets/user_type_selection_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toast/toast.dart';

class SelectUserTypeScreen extends StatefulWidget {
  @override
  _SelectUserTypeScreenState createState() => _SelectUserTypeScreenState();
}

class _SelectUserTypeScreenState extends State<SelectUserTypeScreen> {
  UserType currentSelection = UserType.NONE;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    heightBetweenWidgets(),
                    HeadingWidget(heading: "Select User Type"),
                    heightBetweenWidgets(),
                    HeadingWidget(
                      heading: "Select your best user type to see how it works",
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                    heightBetweenWidgets(),
                    heightBetweenWidgets(),
                    GestureDetector(
                      child: Center(
                        child: UserTypeSelectionButtonWidget(
                          imagePath: 'assets/images/type_doctor.png',
                          upperText: "Sign up via",
                          lowerHighlightedText: "Doctor",
                          isSelected: currentSelection == UserType.DOCTOR,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          currentSelection = UserType.DOCTOR;
                        });
                      },
                    ),
                    heightBetweenWidgets(),
                    GestureDetector(
                      child: Center(
                        child: UserTypeSelectionButtonWidget(
                          imagePath: 'assets/images/type_ngo.png',
                          upperText: "Sign up via",
                          lowerHighlightedText: "NGO",
                          isSelected: currentSelection == UserType.NGO,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          currentSelection = UserType.NGO;
                        });
                      },
                    ),
                    heightBetweenWidgets(),
                    GestureDetector(
                      child: Center(
                        child: UserTypeSelectionButtonWidget(
                          imagePath: 'assets/images/type_donor.png',
                          upperText: "Sign up via",
                          lowerHighlightedText: "Donor",
                          isSelected: currentSelection == UserType.DONOR,
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          currentSelection = UserType.DONOR;
                        });
                      },
                    ),
                    heightBetweenWidgets(),
                    Center(
                      child: CircularButtonWidget(
                        text: "NEXT",
                        color: ThemeConstants.background,
                        press: () {
                          if (currentSelection == UserType.NONE) {
                            Toast.show("Please Select a User Type", context,
                                duration: Toast.LENGTH_LONG,
                                gravity: Toast.BOTTOM);

                            return;
                          } else {
                            //Navigate here
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    HomeScreen()));
                          }
                        },
                      ),
                    ),
                    heightBetweenWidgets(),
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

enum UserType { NONE, NGO, DOCTOR, DONOR }
