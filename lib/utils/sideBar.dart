import 'package:filepod/main.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySidebar extends StatefulWidget {
  @override
  State<MySidebar> createState() => _MySidebarState();
}

class _MySidebarState extends State<MySidebar> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isLandscape =
            MediaQuery.of(context).orientation == Orientation.landscape;
        final sidebarWidth = isLandscape ? 150.0 : constraints.maxWidth * 0.3;

        return Container(
          decoration: const BoxDecoration(
            color: whiteColor,
            border: Border(
              right: BorderSide(color: borderColorDashboard),
            ),
          ),
          width: sidebarWidth,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset('assets/sidebarSvgs/dashboard.svg',
                        height: 20,
                        color: const Color(
                          0xFF78828B,
                        )),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Dashboard',
                      style: dashboardHeadingTwo.copyWith(
                          color: const Color(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/sidebarSvgs/myApps.svg',
                      height: 20,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'My Apps',
                      style: dashboardHeadingTwo.copyWith(
                          color: const Color(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 4,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/sidebarSvgs/appStore.svg',
                      height: 20,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'App Store',
                      style: dashboardHeadingTwo.copyWith(
                          color: const Color(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 4,
                    decoration: const BoxDecoration(
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
                          color: const Color(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 24,
                    width: 4,
                    decoration: const BoxDecoration(
                      color: buttonBgColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SvgPicture.asset(
                      'assets/sidebarSvgs/accounts.svg',
                      height: 20,
                      color: buttonBgColor,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'All Accounts',
                      style: dashboardHeadingTwo,
                    ),
                  ),
                ],
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
                    decoration: const BoxDecoration(
                      color: Colors.white,
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
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Settings',
                      textAlign: TextAlign.left,
                      style: dashboardHeadingTwo.copyWith(
                          color: const Color(
                            0xFF78828B,
                          ),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
