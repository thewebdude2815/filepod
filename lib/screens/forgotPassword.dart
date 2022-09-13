// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:ffi';

import 'package:filepod/screens/checkEmail.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../utils/filePodLeftBar.dart';

class ForgoPassword extends StatefulWidget {
  const ForgoPassword({super.key});

  @override
  State<ForgoPassword> createState() => _ForgoPasswordState();
}

class _ForgoPasswordState extends State<ForgoPassword> {
  TextEditingController email = TextEditingController();
  final _form2key = GlobalKey<FormState>();
  bool emptyFields = false;
  bool correctText = false;

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

            //  Right Bar
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Forgot Password',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Color(0xFF293865),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Don’t worry, it’s quite easy to reset your password.",
                        style: TextStyle(
                          color: formTextColor,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
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
                              mainText: 'Registered Email ID',
                              errorText:
                                  'Please Enter Your Registered Email ID',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),

                      // Send Reset Link Button
                      GestureDetector(
                        onTap: () {
                          if (email.text == '') {
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
                                return CheckEMail();
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
                                    "Send Reset Link",
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
                        height: 40.0,
                      ),
                      Container(
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
                            Text(
                              " Sign in",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Color(0xFF293865),
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
