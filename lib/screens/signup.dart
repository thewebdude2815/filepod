// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:filepod/screens/login.dart';
import 'package:filepod/screens/success.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/textField.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/filePodLeftBar.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController name = TextEditingController();
  bool emptyFields = false;
  bool correctText = false;
  bool checboxToggle = false;
  @override
  Widget build(BuildContext context) {
    bool isTablet(BuildContext context) =>
        MediaQuery.of(context).size.width >= 600;
    bool isPhone(BuildContext context) =>
        MediaQuery.of(context).size.width < 600;
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            //  Checking if the display is of tablet size

            // left bar that includes logo (Location for FilePodLeftBar() is in utils folder)
            if (isTablet(context))
              Expanded(
                child: FilePodLeftBar(),
              ),

            //  Right Bar that includes textfields
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: isPhone(context)
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.start,
                    children: [
                      Text('Sign up to FilePod',
                          textAlign: TextAlign.start, style: headingFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                          'Fill the form below to get started with your account',
                          style: subHeadingFont),
                      const SizedBox(
                        height: 20,
                      ),

                      // User Image CircleAvatar
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                color: Color(0xFFEFEFEF),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 27,
                                  backgroundColor: Color(0xFFCDD9F0),
                                  backgroundImage: AssetImage(
                                    "assets/person.png",
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 3.0,
                              bottom: 0.0,
                              child: CircleAvatar(
                                radius: 13.0,
                                backgroundColor: Color(0xFFEEF1F8),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 11.0,
                                  color: formTextColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          // TextField (CustomTextField() is present in utils folder)
                          SizedBox(
                            width: double.infinity,
                            child: CustomTextField(
                              obsText: false,
                              email: email,
                              emptyFields: emptyFields,
                              iconData: Icons.email_outlined,
                              mainText: 'Email id',
                              errorText: 'Please Enter Your Email ID',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // TextField (CustomTextField() is present in utils folder)
                          SizedBox(
                            width: double.infinity,
                            child: CustomTextField(
                              obsText: false,
                              email: name,
                              emptyFields: emptyFields,
                              iconData: EvaIcons.personOutline,
                              mainText: 'Full Name',
                              errorText: 'Please Enter Your Full Name',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // TextField (CustomTextField() is present in utils folder)
                          SizedBox(
                            width: double.infinity,
                            child: CustomTextField(
                              obsText: false,
                              email: number,
                              emptyFields: emptyFields,
                              iconData: EvaIcons.phoneOutline,
                              mainText: 'Phone Number',
                              errorText: 'Please Enter Your Phone Number',
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (checboxToggle) {
                                setState(() {
                                  checboxToggle = false;
                                });
                              } else {
                                setState(() {
                                  checboxToggle = true;
                                });
                              }
                            },
                            child: Icon(
                              EvaIcons.checkmarkCircle2,
                              size: 18.0,
                              color: !checboxToggle
                                  ? formTextColor
                                  : buttonBgColor,
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            "I agree to ",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: formTextColor,
                            ),
                          ),
                          Text(
                            "Terms of Use",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: formTextColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          Text(
                            " and ",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: formTextColor,
                            ),
                          ),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: formTextColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.0),

                      // Register Button
                      GestureDetector(
                        onTap: () {
                          if (email.text == '' &&
                              name.text == '' &&
                              number.text == '') {
                            setState(() {
                              emptyFields = true;
                            });
                          } else {
                            setState(() {
                              correctText = true;
                            });
                            Timer(Duration(seconds: 3), () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return VerificaionPage();
                              }));
                            });
                          }
                        },
                        child: Container(
                          height: 45.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: buttonBgColor,
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Center(
                            child: !correctText
                                ? Text(
                                    "Register",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Please Wait..",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Lottie.asset(
                                        'assets/loading.json',
                                      )
                                    ],
                                  ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      SizedBox(
                        height: 20.0,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account ?",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: formTextColor,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return LoginPage();
                                }));
                              },
                              child: Text(
                                " Sign in",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFF293865),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
