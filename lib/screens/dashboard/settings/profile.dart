import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/utils/utils.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/textField.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/commonButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController firstNameC = TextEditingController();
  TextEditingController lastNameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController numberC = TextEditingController();
  bool isEditing = false;
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
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Profile',
                      style: dashboardHeadingOne.copyWith(
                          fontWeight: FontWeight.w600, color: blackColor2),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (isEditing) {
                          setState(() {
                            isEditing = false;
                          });
                        } else {
                          setState(() {
                            isEditing = true;
                          });
                        }
                      },
                      child: isEditing
                          ? const CircleAvatar(
                              backgroundColor: greyColor16,
                              child: CircleAvatar(
                                radius: 19,
                                backgroundColor: greyColor15,
                                child: Icon(
                                  EvaIcons.close,
                                  color: greyColor8,
                                ),
                              ),
                            )
                          : CircleAvatar(
                              radius: 20,
                              backgroundColor: buttonBgColor,
                              child: SvgPicture.asset(
                                'assets/pencil.svg',
                                color: whiteColor,
                              ),
                            ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: greyColor12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 90,
                            width: 90,
                            child: Stack(
                              children: [
                                const CircleAvatar(
                                  radius: 45,
                                  backgroundColor: greyColor14,
                                  child: CircleAvatar(
                                    radius: 38,
                                    backgroundImage:
                                        AssetImage('assets/person.png'),
                                  ),
                                ),
                                isEditing
                                    ? Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: CircleAvatar(
                                          radius: 15,
                                          backgroundColor: greyColor17,
                                          child: SvgPicture.asset(
                                            'assets/camera.svg',
                                            color: formTextColor,
                                          ),
                                        ),
                                      )
                                    : const SizedBox()
                              ],
                            ),
                          ),
                          SizedBox(
                            width: isEditing ? 36 : 0,
                          ),
                          isEditing
                              ? Container(
                                  height: 35,
                                  width: 91,
                                  decoration: BoxDecoration(
                                    color: whiteColor,
                                    border: Border.all(color: greyColor6),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Browse',
                                        style: dashboardBodyText.copyWith(
                                            color: formFilledTextColor,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      SvgPicture.asset(
                                        'assets/search.svg',
                                        color: greyColor6,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                )
                              : const Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                                textEditingController: firstNameC,
                                emptyFields: false,
                                errorText: 'Enter Your First Name',
                                iconData: EvaIcons.personOutline,
                                obsText: false,
                                mainText: 'First Name'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: CustomTextField(
                                textEditingController: lastNameC,
                                emptyFields: false,
                                errorText: 'Enter Your Last Name',
                                iconData: EvaIcons.personOutline,
                                obsText: false,
                                mainText: 'Last Name'),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                                textEditingController: emailC,
                                emptyFields: false,
                                errorText: 'Enter Your Email ID',
                                iconData: EvaIcons.emailOutline,
                                obsText: false,
                                mainText: 'Email ID'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: CustomTextField(
                                textEditingController: numberC,
                                emptyFields: false,
                                inputType: TextInputType.number,
                                errorText: 'Enter Your Phone Number',
                                iconData: EvaIcons.phoneOutline,
                                obsText: false,
                                mainText: 'Phone Number'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: isEditing ? 40 : 0,
                      ),
                      isEditing
                          ? Row(
                              children: [
                                const Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Utils.showToastMessage(
                                        'Details Saved Successfully!');

                                    Get.find<SettingsController>()
                                        .changeSettingsPage('changePassword');
                                  },
                                  child: CommonButton(
                                    height: 54,
                                    width: 172,
                                    text: 'Save',
                                    fillColor: greenColor,
                                    hasIcon: true,
                                    iconAddress: 'assets/save.svg',
                                  ),
                                ),
                                const Spacer(),
                              ],
                            )
                          : const SizedBox(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
