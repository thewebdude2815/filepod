// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, missing_required_param

import 'dart:async';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:filepod/screens/forgotPassword.dart';
import 'package:filepod/screens/signup.dart';
import 'package:filepod/screens/success.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/filePodLeftBar.dart';
import 'package:filepod/utils/textField.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? valuechoosed = "Select Wifi";
  TextEditingController password = TextEditingController();
  TextEditingController userId = TextEditingController();
  bool emptyFields = false;
  bool correctText = false;
  bool showandhide = true;
  bool toggleValue = false;
  bool checboxToggle = false;
  List<String> itemlist = <String>[
    "Select Wifi",
    "TendaC32",
    "PTCL_98",
    "PTCL-Hy",
  ];
  @override
  Widget build(BuildContext context) {
    bool _switchValue = true;
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
            if (isTablet(context)) Expanded(child: FilePodLeftBar()),

            //  Right Bar that includes textfields
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sign up to FilePod',
                          textAlign: TextAlign.start, style: headingFont),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                          "Sign in to manage your account, notificattions and more.",
                          style: subHeadingFont),
                      Container(
                        height: 40.0,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "WiFi",
                              style: TextStyle(
                                color: Color(0xFF656565),
                              ),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),

                            // Flutter Switch Pacakge added in pubspec.yaml
                            FlutterSwitch(
                                inactiveColor:
                                    Color.fromARGB(255, 177, 177, 177),
                                activeColor: Color(0xFF59D4A0),
                                inactiveToggleColor: Colors.white,
                                height: 16.0,
                                width: 28.0,
                                toggleSize: 10.0,
                                duration: Duration(milliseconds: 200),
                                value: toggleValue,
                                onToggle: (v) {
                                  setState(() {
                                    toggleValue = v;
                                  });
                                }),
                          ],
                        ),
                      ),

                      // Wifi Dropdown Menu
                      SizedBox(
                        height: 55.0,
                        width: double.infinity,
                        child: InputDecorator(
                          decoration: const InputDecoration(
                              prefixIcon: Icon(EvaIcons.wifi),
                              border: OutlineInputBorder()),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              iconSize: 18,
                              isExpanded: true,
                              value: toggleValue ? itemlist[1] : itemlist[0],
                              items: itemlist.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: TextStyle(
                                      color: formTextColor,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? item) {
                                setState(() {
                                  valuechoosed = item;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),

                      // TextField (CustomTextField() is present in utils folder)
                      SizedBox(
                        width: double.infinity,
                        child: CustomTextField(
                          obsText: false,
                          email: userId,
                          emptyFields: emptyFields,
                          iconData: EvaIcons.personOutline,
                          mainText: 'User ID',
                          errorText: 'Please Enter Your User ID',
                        ),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      // TextField (CustomTextField() is present in utils folder)
                      SizedBox(
                        width: double.infinity,
                        child: CustomTextField(
                          suffIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                showandhide = !showandhide;
                              });
                            },
                            child: showandhide
                                ? Icon(
                                    Icons.visibility_off_outlined,
                                    color: formTextColor,
                                    size: 18.0,
                                  )
                                : Icon(
                                    Icons.visibility_outlined,
                                    color: formTextColor,
                                    size: 18.0,
                                  ),
                          ),
                          obsText: showandhide,
                          email: password,
                          emptyFields: emptyFields,
                          iconData: EvaIcons.lockOutline,
                          mainText: 'Password',
                          errorText: 'Please Enter Your Password',
                        ),
                      ),

                      SizedBox(
                        height: 10.0,
                      ),
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                                  size: 18,
                                  color: !checboxToggle
                                      ? formTextColor
                                      : buttonBgColor,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(
                                  color: formTextColor,
                                  fontSize: 11.0,
                                ),
                              ),
                            ],
                          ),
                          Container(),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return ForgoPassword();
                              }));
                            },
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 11.0,
                                color: buttonBgColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      //
                      SizedBox(
                        height: 30.0,
                      ),

                      // Sign In Button
                      GestureDetector(
                        onTap: () {
                          if (userId.text == '' && password.text == '') {
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
                                    "Sign in",
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
                      SizedBox(
                        height: 20.0,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't Have An Account?",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: formTextColor,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                  return Signup();
                                }));
                              },
                              child: Text(
                                " Sign up",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xFF293865),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // end
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
