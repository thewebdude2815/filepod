import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/commonButton.dart';
import 'package:filepod/utils/widgets/commonSwitchWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class SettingsDateAndTime extends StatefulWidget {
  const SettingsDateAndTime({super.key});

  @override
  State<SettingsDateAndTime> createState() => _SettingsDateAndTimeState();
}

class _SettingsDateAndTimeState extends State<SettingsDateAndTime> {
  TextEditingController portC = TextEditingController();
  bool toggleValue = false;
  bool toggleValueDropdown = false;
  String? valuechoosed = "UTC +8:45Western Australia";

  List<String> itemlist = <String>[
    "Select Wifi",
    "TendaC32",
    "PTCL_98",
    "PTCL-Hy",
  ];
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
                            text: '  Date & Time',
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
                  'Date & Time',
                  style: dashboardHeadingOne.copyWith(
                      fontWeight: FontWeight.w600, color: blackColor2),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Automatic Date & Time',
                        style: dashboardHeadingOne.copyWith(
                            fontWeight: FontWeight.w500,
                            color: greyColor5,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: CommonSwitchWidget(
                        toggleValue: toggleValue,
                        text: 'ON',
                        isColumn: false,
                        height: 40,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Automatic Time Zone',
                        style: dashboardHeadingOne.copyWith(
                            fontWeight: FontWeight.w500,
                            color: greyColor5,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        // height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Flutter Switch Pacakge added in pubspec.yaml
                            FlutterSwitch(
                                inactiveColor: switchOffColor,
                                activeColor: greenSwitchColor,
                                inactiveToggleColor: Colors.white,
                                height: 16.0,
                                width: 28.0,
                                toggleSize: 10.0,
                                duration: const Duration(milliseconds: 200),
                                value: toggleValue,
                                onToggle: (v) {
                                  setState(() {
                                    toggleValue = v;
                                  });
                                }),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ON",
                                    style: dashboardHeadingTwo.copyWith(
                                        color: formFilledTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                  Text(
                                    "Use network provider time zone.",
                                    style: dashboardHeadingTwo.copyWith(
                                        color: formTextColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Set Date',
                        style: dashboardHeadingOne.copyWith(
                            fontWeight: FontWeight.w500,
                            color: greyColor5,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 47,
                        width: 290,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: greyColor24),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'May 3, 2023',
                              style: dashboardHeadingOne.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: greyColor5,
                                  fontSize: 15),
                            ),
                            CircleAvatar(
                              radius: 19,
                              backgroundColor: greyColor17,
                              child: SvgPicture.asset(
                                'assets/calendar.svg',
                                color: greyColor23,
                                height: 15,
                                width: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Set Time',
                        style: dashboardHeadingOne.copyWith(
                            fontWeight: FontWeight.w500,
                            color: greyColor5,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 47,
                        width: 290,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          border: Border.all(color: greyColor24),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '9:25 PM',
                              style: dashboardHeadingOne.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: greyColor5,
                                  fontSize: 15),
                            ),
                            CircleAvatar(
                              radius: 19,
                              backgroundColor: greyColor17,
                              child: SvgPicture.asset(
                                'assets/clock.svg',
                                color: greyColor23,
                                height: 15,
                                width: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Select Time Zone',
                        style: dashboardHeadingOne.copyWith(
                            fontWeight: FontWeight.w500,
                            color: greyColor5,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 55.0,
                        child: InputDecorator(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              iconSize: 18,
                              isExpanded: true,
                              value: toggleValueDropdown
                                  ? itemlist[1]
                                  : itemlist[0],
                              items: itemlist.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                    value,
                                    style: const TextStyle(
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
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Use 24 Hour Format',
                        style: dashboardHeadingOne.copyWith(
                            fontWeight: FontWeight.w500,
                            color: greyColor5,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: CommonSwitchWidget(
                        toggleValue: toggleValue,
                        text: 'ON',
                        isColumn: false,
                        height: 40,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Use 24 Hour Format',
                        style: dashboardHeadingOne.copyWith(
                            fontWeight: FontWeight.w500,
                            color: greyColor5,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "MM/DD/YYYY",
                        style: dashboardHeadingTwo.copyWith(
                            color: formFilledTextColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  children: [
                    const Spacer(
                      flex: 1,
                    ),
                    Container(
                      height: 54,
                      width: 134,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: greyColor22),
                          borderRadius: BorderRadius.circular(4)),
                      child: Center(
                        child: Text(
                          'Reset All',
                          style: dashboardHeadingOne.copyWith(
                              fontWeight: FontWeight.w400,
                              color: greyColor6,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    CommonButton(
                      height: 54,
                      width: 257,
                      text: 'Save Changes',
                      fillColor: greenColor,
                      hasIcon: true,
                      iconAddress: 'assets/save.svg',
                    ),
                    const Spacer(
                      flex: 1,
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
