import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:filepod/utils/utils.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/textField.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/commonButton.dart';
import 'package:filepod/utils/widgets/commonSwitchWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsWebDav extends StatefulWidget {
  const SettingsWebDav({super.key});

  @override
  State<SettingsWebDav> createState() => _SettingsWebDavState();
}

class _SettingsWebDavState extends State<SettingsWebDav> {
  TextEditingController portC = TextEditingController();
  bool toggleValue = false;
  bool toggleValueDropdown = false;
  String? valuechoosed = "Select Directory";

  List<String> itemlist = <String>[
    "Select Wifi",
    "TendaC32",
    "PTCL_98",
    "PTCL-Hy",
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                    children: <TextSpan>[
                      TextSpan(
                          text: '  WebDav',
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
                'Network Interface',
                style: dashboardHeadingOne.copyWith(
                    fontWeight: FontWeight.w600, color: blackColor2),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Text(
                    'WLAN',
                    style: dashboardHeadingOne.copyWith(
                        fontWeight: FontWeight.w500,
                        color: greyColor5,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    width: 48,
                  ),
                  Text(
                    'RNDIS',
                    style: dashboardHeadingOne.copyWith(
                        fontWeight: FontWeight.w500,
                        color: greyColor5,
                        fontSize: 16),
                  ),
                  const Spacer(),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Port',
                          style: dashboardHeadingOne.copyWith(
                              fontWeight: FontWeight.w500,
                              color: greyColor5,
                              fontSize: 16),
                        ),
                        Text(
                          '(Port used by WebDav server)',
                          style: dashboardHeadingOne.copyWith(
                              fontWeight: FontWeight.w400,
                              color: formTextColor,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                        textEditingController: portC,
                        emptyFields: false,
                        errorText: 'Enter Port Number',
                        showPrefixIcon: false,
                        obsText: false,
                        mainText: 'Enter Your Port'),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonSwitchWidget(
                          toggleValue: toggleValue,
                          text: 'ON',
                          isColumn: false,
                          height: 40,
                        ),
                        Text(
                          'Username and password needed to connect to server',
                          style: dashboardHeadingOne.copyWith(
                              fontWeight: FontWeight.w400,
                              color: formTextColor,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                        textEditingController: portC,
                        emptyFields: false,
                        errorText: 'Enter Username',
                        iconData: EvaIcons.person,
                        obsText: false,
                        mainText: 'Username'),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomTextField(
                        textEditingController: portC,
                        emptyFields: false,
                        errorText: 'Enter Your Password',
                        iconData: EvaIcons.lockOutline,
                        obsText: false,
                        mainText: 'Password'),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Home Directory',
                          style: dashboardHeadingOne.copyWith(
                              fontWeight: FontWeight.w500,
                              color: greyColor5,
                              fontSize: 16),
                        ),
                        Text(
                          '(Select home directory used by WebDav server)',
                          style: dashboardHeadingOne.copyWith(
                              fontWeight: FontWeight.w400,
                              color: formTextColor,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 55.0,
                      child: InputDecorator(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            iconSize: 18,
                            isExpanded: true,
                            value:
                                toggleValueDropdown ? itemlist[1] : itemlist[0],
                            items: itemlist
                                .map<DropdownMenuItem<String>>((String value) {
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
                      'FilePod Folder',
                      style: dashboardHeadingOne.copyWith(
                          fontWeight: FontWeight.w500,
                          color: greyColor5,
                          fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: CustomTextField(
                        textEditingController: portC,
                        emptyFields: false,
                        errorText: 'Enter Port Number',
                        showPrefixIcon: false,
                        obsText: false,
                        mainText: 'Enter Your Port'),
                  ),
                  const SizedBox(
                    width: 16,
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
                  GestureDetector(
                    onTap: () {
                      Utils.showToastMessage('Details Saved Successfully!');
                    },
                    child: CommonButton(
                      height: 54,
                      width: 257,
                      text: 'Save Configuration',
                      fillColor: greenColor,
                      hasIcon: true,
                      iconAddress: 'assets/save.svg',
                    ),
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
    );
  }
}
