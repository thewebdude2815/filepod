// ignore_for_file: sort_child_properties_last

import 'package:filepod/config/routes.dart';

import 'package:filepod/controller/dashboard_controller.dart';
import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/screens/login.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
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
            PopupMenuButton(
              onSelected: (value) {},
              offset: const Offset(0.0, 33),
              itemBuilder: (ctx) => [Utils.shutDownFilePod()],
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
            PopupMenuButton(
              onSelected: (value) {},
              offset: const Offset(0.0, 33),
              itemBuilder: (ctx) => [Utils.restartFilePod()],
              child: CircleAvatar(
                radius: 12,
                backgroundColor: dashboardCirclesBgColor,
                child: SvgPicture.asset(
                  'assets/refresh.svg',
                  height: 12,
                ),
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
                Utils.nameAndEmail(),
                Utils.buildPopupMenuItemDownload(
                    'My Profile', 'assets/person.svg', 12, () {
                  Get.find<SettingsController>().changeSettingsPage('profile');
                  Get.find<DashboardController>()
                      .changeDashboardPage('settings');
                }),
                Utils.buildPopupMenuItemDownload(
                    'Change Password', 'assets/lock3.svg', 12, () {
                  Get.find<SettingsController>()
                      .changeSettingsPage('changePassword');
                  Get.find<DashboardController>()
                      .changeDashboardPage('settings');
                }),
                Utils.divider(),
                Utils.buildPopupMenuItemDownload(
                    'Sign out', 'assets/time.svg', 12, () {
                  // Navigator.pop(context);
                  Future.delayed(Duration(milliseconds: 1), () {
                    return Get.toNamed(routeLogin);
                  });
                })
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
}
