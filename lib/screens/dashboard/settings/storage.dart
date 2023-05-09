import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/storageColorWithTextWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsStorage extends StatefulWidget {
  const SettingsStorage({super.key});

  @override
  State<SettingsStorage> createState() => _SettingsStorageState();
}

class _SettingsStorageState extends State<SettingsStorage> {
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
                            text: '  Storage',
                            style: dashboardText.copyWith(
                                color: greyColor5, fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // navigate to desired screen
                              })
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Preferred Install Location',
                  style: dashboardText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greyColor9),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Change the preferred installation location for new apps',
                  style: dashboardText.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: formTextColor),
                ),
                const SizedBox(
                  height: 44,
                ),
                Text(
                  'Internal Storage',
                  style: dashboardText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greyColor5),
                ),
                const SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const LinearProgressIndicator(
                        value: 0.8,
                        minHeight: 19,
                        color: greyColor20,
                        backgroundColor: greyColor20,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const LinearProgressIndicator(
                        value: 0.75,
                        backgroundColor: Colors.transparent,
                        color: greenColor2,
                        minHeight: 19,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.transparent,
                        color: blackColor3,
                        minHeight: 19,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    StorageColorWithTextWidget(
                      color: greenColor2,
                      text: 'Avaliable',
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    StorageColorWithTextWidget(
                      color: blackColor3,
                      text: 'Apps (App Data & Media Content)',
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    StorageColorWithTextWidget(
                      color: greyColor20,
                      text: 'Cached Data',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'SD Card',
                  style: dashboardText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: greyColor5),
                ),
                const SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const LinearProgressIndicator(
                        value: 0.8,
                        minHeight: 19,
                        color: greyColor20,
                        backgroundColor: greyColor20,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const LinearProgressIndicator(
                        value: 0.75,
                        backgroundColor: Colors.transparent,
                        color: greenColor2,
                        minHeight: 19,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: const LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.transparent,
                        color: blackColor3,
                        minHeight: 19,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    StorageColorWithTextWidget(
                      color: greenColor2,
                      text: 'Avaliable',
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    StorageColorWithTextWidget(
                      color: blackColor3,
                      text: 'Apps (App Data & Media Content)',
                    ),
                    SizedBox(
                      width: 34,
                    ),
                    StorageColorWithTextWidget(
                      color: greyColor20,
                      text: 'Cached Data',
                    ),
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
