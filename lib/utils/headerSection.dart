// ignore_for_file: sort_child_properties_last

import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  PopupMenuItem _nameAndEmail() {
    return PopupMenuItem(
      height: 40,
      child: SizedBox(
        width: 180,
        child: Row(
          children: [
            const SizedBox(
              width: 3,
            ),
            Image.asset(
              'assets/user.png',
              height: 30,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Andrew Lam',
                  style: dashboardHeadingTwo.copyWith(color: Colors.black),
                ),
                Text(
                  'andrew.lam@gmail.com',
                  style: dashboardbodyTwo.copyWith(
                    color: const Color(0xFF8D8D8D),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  PopupMenuItem _divider() {
    return const PopupMenuItem(
      height: 10,
      child: Divider(),
    );
  }

  PopupMenuItem _buildPopupMenuItemDownload(
      String title, String svg, int position) {
    return PopupMenuItem(
      child: SizedBox(
        width: 180,
        child: Row(
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 15,
                backgroundColor: const Color(0xFFF3F7F8),
                child: SvgPicture.asset(
                  svg,
                  height: 12,
                  color: const Color(0xFF545764),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 2,
              child: Text(
                title,
                style: dashboardTextThree,
              ),
            ),
            const Spacer(),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFF3F7F8),
              ),
              child: const Padding(
                padding: EdgeInsets.zero,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 10,
                  color: Color(0xFF545764),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: whiteColor,
          border: Border(
            bottom: BorderSide(color: borderColorDashboard),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here...',
                    hintStyle:
                        const TextStyle(color: formTextColor, fontSize: 8),
                    filled: true,
                    fillColor: Colors.transparent,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: borderColorFields)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: borderColorFields)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: borderColorFields)),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: formTextColor,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                _deleteAlert(context);
              },
              child: CircleAvatar(
                radius: 12,
                backgroundColor: dashboardCirclesBgColor,
                child: SvgPicture.asset(
                  'assets/switch.svg',
                  height: 12,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: dashboardCirclesBgColor,
              child: SvgPicture.asset(
                'assets/refresh.svg',
                height: 12,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            PopupMenuButton(
              onSelected: (value) {
                // _onMenuItemSelected(value as int);
              },
              offset: const Offset(0.0, 33),
              itemBuilder: (ctx) => [
                _nameAndEmail(),
                _buildPopupMenuItemDownload(
                    'My Profile', 'assets/person.svg', 12),
                _buildPopupMenuItemDownload(
                    'Change Password', 'assets/lock3.svg', 12),
                _divider(),
                _buildPopupMenuItemDownload('Sign out', 'assets/time.svg', 12),
              ],
              child: Row(
                children: [
                  Image.asset(
                    'assets/user.png',
                    height: 30,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    "assets/dropdown.svg",
                    height: 6,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
      ),
    );
  }

  _deleteAlert(context) {
    Alert(
      padding: const EdgeInsets.all(16),
      context: context,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/trash.png',
            height: 50,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Are you sure you wish to delete your account?',
            style: dashboardHeadingOne.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Please keep in mind that deleting your account will lose entire data of this account and this process cannot be reversible.',
            style: TextStyle(
              fontFamily: 'Museo',
              color: Color(0xFF363948),
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          border: Border.all(
            color: const Color(0xFFBDBDBD),
          ),
          child: const Text(
            "No",
            style: TextStyle(color: Color(0xFF525659), fontSize: 12),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
        ),
        DialogButton(
          child: const Text(
            "Yes, Delete",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontFamily: 'Museo'),
          ),
          onPressed: () {
            _confirmdeleteAlert(context);
          },
          color: const Color(0xFFFE857D),
        ),
      ],
    ).show();
  }

  _confirmdeleteAlert(context) {
    Alert(
      padding: const EdgeInsets.all(16),
      context: context,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/ .png',
            height: 70,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Account Deleted!',
            style: dashboardHeadingOne.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'The requested account has beed deleted now.',
            style: TextStyle(
              fontFamily: 'Museo',
              color: Color(0xFF363948),
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          border: Border.all(
            color: const Color(0xFFBDBDBD),
          ),
          child: const Text(
            "OK",
            style: TextStyle(color: Color(0xFF525659), fontSize: 12),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.white,
        ),
      ],
    ).show();
  }
}
