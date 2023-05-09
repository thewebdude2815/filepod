import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/aboutFilePodWidget.dart';
import 'package:filepod/utils/widgets/commonButton.dart';
import 'package:filepod/utils/widgets/commonSwitchWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsAppsSingle extends StatefulWidget {
  const SettingsAppsSingle({super.key});

  @override
  State<SettingsAppsSingle> createState() => _SettingsAppsSingleState();
}

class _SettingsAppsSingleState extends State<SettingsAppsSingle> {
  bool toggleValue = false;

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
                            text: '  Apps / FilePodOneDrivePlugin',
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
                Row(
                  children: [
                    Image.asset(
                      'assets/images/oneD.png',
                      height: 23,
                      width: 35,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FilePodOneDrivePlugin',
                          style: dashboardHeadingOne.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: greyColor5),
                        ),
                        Text(
                          'Version 1.040',
                          style: dashboardHeadingOne.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: formTextColor),
                        ),
                      ],
                    ),
                    const Spacer(),
                    CommonButton(
                      height: 42,
                      width: 143,
                      text: 'UnInstall',
                      fillColor: pinkColor2,
                      hasIcon: false,
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    Container(
                      height: 42,
                      width: 143,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: greyColor25)),
                      child: Center(
                        child: Text(
                          'Force Stop',
                          style: dashboardBodyText.copyWith(
                              color: greyColor4,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Divider(
                  color: borderColorDashboard,
                ),
                const AboutFilePodWidget(
                  mainText: 'Storage',
                  subText: '19.82 MB used in internal storage',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Permission',
                  subText: 'No permission granted',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Battery usage',
                  subText: '10%',
                ),
                const SizedBox(
                  height: 28,
                ),
                const AboutFilePodWidget(
                  mainText: 'Data Usage',
                  subText: '205.89 MB',
                ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Pause app activity if unsed',
                        style: dashboardText.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: greyColor5),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: CommonSwitchWidget(
                          toggleValue: toggleValue,
                          text: 'ON',
                          height: 40,
                          isColumn: false,
                        )),
                  ],
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
