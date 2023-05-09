import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/textField.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/commonButton.dart';
import 'package:filepod/utils/widgets/commonSwitchWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPasswordC = TextEditingController();
  TextEditingController newPasswordC = TextEditingController();
  TextEditingController confirmNewPasswordC = TextEditingController();
  bool showandhide = true;
  bool toggleValue = false;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Change Password',
                  style: dashboardHeadingOne.copyWith(
                      fontWeight: FontWeight.w600, color: blackColor2),
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
                      Text(
                        'Please enter your current password to continue',
                        style: dashboardText.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: greyColor5),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                                textEditingController: currentPasswordC,
                                emptyFields: false,
                                errorText: 'Enter Your Current Password',
                                iconData: EvaIcons.lockOutline,
                                suffIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showandhide = !showandhide;
                                    });
                                  },
                                  child: showandhide
                                      ? const Icon(
                                          Icons.visibility_off_outlined,
                                          color: formTextColor,
                                          size: 18.0,
                                        )
                                      : const Icon(
                                          Icons.visibility_outlined,
                                          color: formTextColor,
                                          size: 18.0,
                                        ),
                                ),
                                obsText: false,
                                mainText: 'Current Password'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                                textEditingController: newPasswordC,
                                emptyFields: false,
                                errorText: 'Enter Your New Password',
                                iconData: EvaIcons.lockOutline,
                                obsText: false,
                                suffIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showandhide = !showandhide;
                                    });
                                  },
                                  child: showandhide
                                      ? const Icon(
                                          Icons.visibility_off_outlined,
                                          color: formTextColor,
                                          size: 18.0,
                                        )
                                      : const Icon(
                                          Icons.visibility_outlined,
                                          color: formTextColor,
                                          size: 18.0,
                                        ),
                                ),
                                mainText: 'New Password'),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: CustomTextField(
                                textEditingController: confirmNewPasswordC,
                                emptyFields: false,
                                inputType: TextInputType.number,
                                errorText: 'Enter Your Confirm New Password',
                                iconData: EvaIcons.lockOutline,
                                obsText: false,
                                suffIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showandhide = !showandhide;
                                    });
                                  },
                                  child: showandhide
                                      ? const Icon(
                                          Icons.visibility_off_outlined,
                                          color: formTextColor,
                                          size: 18.0,
                                        )
                                      : const Icon(
                                          Icons.visibility_outlined,
                                          color: formTextColor,
                                          size: 18.0,
                                        ),
                                ),
                                mainText: 'Confirm New Password'),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/info.svg',
                            color: formTextColor,
                            height: 15,
                            width: 15,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Text(
                              'Passwords must have at least 8 characters and contain at least two of the following: uppercase letters, lowercase letters, numbers, and symbols.',
                              style: dashboardHeadingTwo.copyWith(
                                  color: greyColor18,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      CommonSwitchWidget(
                        toggleValue: toggleValue,
                        text: 'ON',
                        isColumn: false,
                        height: 40,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          CommonButton(
                            height: 54,
                            width: 172,
                            text: 'Save',
                            fillColor: greenColor,
                            hasIcon: true,
                            iconAddress: 'assets/save.svg',
                          ),
                          const Spacer(),
                        ],
                      ),
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
