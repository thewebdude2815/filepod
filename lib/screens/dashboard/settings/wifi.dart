import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/commonSwitchWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wifi extends StatefulWidget {
  const Wifi({super.key});

  @override
  State<Wifi> createState() => _WifiState();
}

class _WifiState extends State<Wifi> {
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
                            text: '  Wifi',
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
                  'WIFI',
                  style: dashboardText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greyColor9),
                ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: whitishColor3,
                      child: Icon(
                        EvaIcons.wifi,
                        color: greyColor19,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'VirtualWifi',
                      style: dashboardHeadingOne.copyWith(
                          color: greyColor5,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    const Spacer(),
                    CommonSwitchWidget(
                      toggleValue: toggleValue,
                      text: 'ON',
                      isColumn: true,
                      height: 40,
                      text2: 'Toggle to switch off.',
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Spacer(),
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
