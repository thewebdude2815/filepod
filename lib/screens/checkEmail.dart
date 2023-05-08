// ignore_for_file: unused_local_variable, unused_element, file_names

import 'package:filepod/utils/appConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/filePodLeftBar.dart';

class CheckEMail extends StatefulWidget {
  const CheckEMail({super.key});

  @override
  State<CheckEMail> createState() => _CheckEMailState();
}

class _CheckEMailState extends State<CheckEMail> {
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
            if (isTablet(context))
              const Expanded(
                child: FilePodLeftBar(),
              ),

            // Right bar
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/checkEmail.svg'),
                      const Text(
                        'Check Your Email',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF293865),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'We have sent you an email containing password reset link\nto your registered id dave********@gmail.com',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          height: 45.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: buttonBgColor,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: const Center(
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
