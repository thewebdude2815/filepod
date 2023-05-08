// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, missing_required_param, unused_element, unused_local_variable

import 'package:filepod/config/routes.dart';
import 'package:filepod/screens/login.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/filePodLeftBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class VerificaionPage extends StatefulWidget {
  const VerificaionPage({super.key});

  @override
  State<VerificaionPage> createState() => _VerificaionPageState();
}

class _VerificaionPageState extends State<VerificaionPage> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isTablet(context)) Expanded(child: FilePodLeftBar()),

            //  Right Bar
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/thumbsUp.svg',
                        height: 70,
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Success",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF293865),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "Your account has been created successfully.",
                        style: TextStyle(
                          color: Color(0xFF656565),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "An email containing your password has been sent to",
                        style: TextStyle(
                          color: Color(0xFF656565),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "your registered id ",
                            style: TextStyle(
                              color: Color(0xFF656565),
                            ),
                          ),
                          Text(
                            "dev*********@gmail.com",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: buttonBgColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(routeLogin);
                        },
                        child: Container(
                          height: 45.0,
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: buttonBgColor,
                          ),
                          child: Center(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
