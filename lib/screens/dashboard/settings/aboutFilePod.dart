import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/aboutFilePodWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutFilepod extends StatefulWidget {
  const AboutFilepod({super.key});

  @override
  State<AboutFilepod> createState() => _AboutFilepodState();
}

class _AboutFilepodState extends State<AboutFilepod> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Expanded(
        flex: 6,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Settings /',
                      style: dashboardheadingThree,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.find<SettingsController>()
                              .changeSettingsPage('main');
                        },
                      children: <TextSpan>[
                        TextSpan(
                            text: '  About FilePod',
                            style: dashboardText.copyWith(
                                color: greyColor5, fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // navigate to desired screen
                              })
                      ]),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'System Software update',
                  style: dashboardText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greyColor9),
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'FilePod Version',
                  subText: '1.990002',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'FilePod Plugin',
                  subText: 'Google Drive 1.0 Box',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Android Version',
                  subText: '13.0 (Tiramisu)',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Status',
                  subText: 'Phone numbers, signals etc',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Model Number',
                  subText: 'Virtual Box',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Baseband Version',
                  subText: '-----',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Kernel version',
                  subText: '5.4.61-android11-0-00153-ga972f59040e4',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Build Number',
                  subText:
                      '5.4.61-android11-0-00153-ga95.4.61-android11-0-00153-ga972f59040e4',
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
