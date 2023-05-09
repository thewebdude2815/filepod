// ignore_for_file: prefer_const_constructors

import 'package:filepod/controller/dashboard_controller.dart';
import 'package:filepod/main.dart';
import 'package:filepod/screens/dashboard/allAccounts.dart';
import 'package:filepod/screens/dashboard/allAccountsSingle.dart';
import 'package:filepod/screens/dashboard/appStore.dart';
import 'package:filepod/screens/dashboard/dashboard.dart';
import 'package:filepod/screens/dashboard/myApps.dart';
import 'package:filepod/screens/dashboard/settings/settings.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/headerSection.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  // String currentdashboardController.currentPage.value = 'dashboard';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashboardController) {
      return Scaffold(
        body: SafeArea(
          child: Row(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    decoration: const BoxDecoration(
                      color: whiteColor,
                      border: Border(
                        right: BorderSide(color: borderColorDashboard),
                      ),
                    ),
                    // width: sidebarWidth,
                    width: 150,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              'assets/logo.svg',
                              height: 30,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'FilePod',
                              style: dashboardHeadingOne,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        GestureDetector(
                          onTap: () {
                            dashboardController
                                .changeDashboardPage('dashboard');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 24,
                                width: 4,
                                decoration: BoxDecoration(
                                  color:
                                      dashboardController.currentPage.value ==
                                              'dashboard'
                                          ? buttonBgColor
                                          : Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SvgPicture.asset(
                                  'assets/sidebarSvgs/dashboard.svg',
                                  color:
                                      dashboardController.currentPage.value ==
                                              'dashboard'
                                          ? buttonBgColor
                                          : Color(
                                              0xFF78828B,
                                            ),
                                  height: 20,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Dashboard',
                                  style:
                                      dashboardController.currentPage.value ==
                                              'dashboard'
                                          ? dashboardHeadingTwo
                                          : dashboardHeadingTwo.copyWith(
                                              color: Color(
                                                0xFF78828B,
                                              ),
                                              fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            dashboardController.changeDashboardPage('myApps');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 24,
                                width: 4,
                                decoration: BoxDecoration(
                                  color:
                                      dashboardController.currentPage.value ==
                                              'myApps'
                                          ? buttonBgColor
                                          : Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SvgPicture.asset(
                                  'assets/sidebarSvgs/myApps.svg',
                                  color:
                                      dashboardController.currentPage.value ==
                                              'myApps'
                                          ? buttonBgColor
                                          : Color(
                                              0xFF78828B,
                                            ),
                                  height: 20,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'My Apps',
                                  style:
                                      dashboardController.currentPage.value ==
                                              'myApps'
                                          ? dashboardHeadingTwo
                                          : dashboardHeadingTwo.copyWith(
                                              color: Color(
                                                0xFF78828B,
                                              ),
                                              fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            dashboardController.changeDashboardPage('appStore');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 24,
                                width: 4,
                                decoration: BoxDecoration(
                                  color:
                                      dashboardController.currentPage.value ==
                                              'appStore'
                                          ? buttonBgColor
                                          : Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SvgPicture.asset(
                                  'assets/sidebarSvgs/appStore.svg',
                                  color:
                                      dashboardController.currentPage.value ==
                                              'appStore'
                                          ? buttonBgColor
                                          : Color(
                                              0xFF78828B,
                                            ),
                                  height: 20,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'App Store',
                                  style:
                                      dashboardController.currentPage.value ==
                                              'appStore'
                                          ? dashboardHeadingTwo
                                          : dashboardHeadingTwo.copyWith(
                                              color: Color(
                                                0xFF78828B,
                                              ),
                                              fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 24,
                              width: 4,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                ),
                              ),
                            ),
                            Expanded(
                              child: SvgPicture.asset(
                                'assets/sidebarSvgs/analytics.svg',
                                height: 20,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Analytics',
                                style: dashboardHeadingTwo.copyWith(
                                    color: Color(
                                      0xFF78828B,
                                    ),
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            dashboardController
                                .changeDashboardPage('allAccounts');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 24,
                                width: 4,
                                decoration: BoxDecoration(
                                  color:
                                      dashboardController.currentPage.value ==
                                              'allAccounts'
                                          ? buttonBgColor
                                          : Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SvgPicture.asset(
                                  'assets/sidebarSvgs/accounts.svg',
                                  color:
                                      dashboardController.currentPage.value ==
                                              'allAccounts'
                                          ? buttonBgColor
                                          : Color(
                                              0xFF78828B,
                                            ),
                                  height: 20,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'All Accounts',
                                  style:
                                      dashboardController.currentPage.value ==
                                              'allAccounts'
                                          ? dashboardHeadingTwo
                                          : dashboardHeadingTwo.copyWith(
                                              color: Color(
                                                0xFF78828B,
                                              ),
                                              fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            dashboardController.changeDashboardPage('settings');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 24,
                                width: 4,
                                decoration: BoxDecoration(
                                  color:
                                      dashboardController.currentPage.value ==
                                              'settings'
                                          ? buttonBgColor
                                          : Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SvgPicture.asset(
                                  'assets/sidebarSvgs/settings.svg',
                                  height: 20,
                                  color:
                                      dashboardController.currentPage.value ==
                                              'settings'
                                          ? buttonBgColor
                                          : Color(
                                              0xFF78828B,
                                            ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Settings',
                                  textAlign: TextAlign.left,
                                  style:
                                      dashboardController.currentPage.value ==
                                              'settings'
                                          ? dashboardHeadingTwo
                                          : dashboardHeadingTwo.copyWith(
                                              color: Color(
                                                0xFF78828B,
                                              ),
                                              fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Expanded(
                child: Container(
                  color: whiteColor,
                  child: Column(
                    children: [
                      const HeaderSection(),
                      dashboardController.currentPage.value == 'dashboard'
                          ? Dashboard()
                          : dashboardController.currentPage.value == 'myApps'
                              ? MyApps()
                              : dashboardController.currentPage.value ==
                                      'appStore'
                                  ? AppStore()
                                  : dashboardController.currentPage.value ==
                                          'allAccounts'
                                      ? AllAccounts()
                                      : dashboardController.currentPage.value ==
                                              'allAccontsSingle'
                                          ? AllAccountsSingle()
                                          : dashboardController
                                                      .currentPage.value ==
                                                  'settings'
                                              ? Settings()
                                              : Dashboard(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
