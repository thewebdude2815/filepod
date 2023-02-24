import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/headerSection.dart';
import 'package:filepod/utils/sideBar.dart';

import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/allAccountSingleWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class AllAccountsSingle extends StatefulWidget {
  const AllAccountsSingle({super.key});

  @override
  State<AllAccountsSingle> createState() => _AllAccountsSingleState();
}

class _AllAccountsSingleState extends State<AllAccountsSingle> {
  String? dropdownValue = 'None';
  bool listView = true;
  bool saveSettings = false;
  bool docCheck = true;
  bool videosCheck = true;
  bool workCheck = true;
  bool projectsCheck = false;
  bool photosCheck = true;
  bool privateCheck = true;
  bool folderCheck = false;
  bool assetsCheck = false;
  bool designCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            MySidebar(),
            Expanded(
              child: Container(
                color: whiteColor,
                child: Column(children: [
                  const HeaderSection(),
                  Expanded(
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
                              children: [
                                RichText(
                                  text: TextSpan(
                                      text: 'All Accounts /',
                                      style: dashboardheadingThree,
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '  Google Drive',
                                            style: dashboardText.copyWith(
                                                color: greyColor5,
                                                fontWeight: FontWeight.w500),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                // navigate to desired screen
                                              })
                                      ]),
                                ),
                                const Spacer(),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: buttonBgColor,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 8),
                                            decoration: BoxDecoration(
                                              color: lightGreyishDashboardColor,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/drive.svg',
                                                  height: 10,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'mycloudstorage@gmail.com',
                                                  style: dashboardbodyTwo.copyWith(
                                                      color:
                                                          darkGreyishDashboardColor,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 8),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: pinkColor,
                                              ),
                                              color: whiteColor,
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/delete.svg',
                                                  height: 10,
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  'Disconnect',
                                                  style:
                                                      dashboardbodyTwo.copyWith(
                                                          color: pinkColor,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      SizedBox(
                                        // color: Colors.orange,
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: docCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      docCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'Documents',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: videosCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      videosCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'Videos',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: workCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      workCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'Work',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: projectsCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      projectsCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'My Projects',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: photosCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      photosCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'Photos',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: privateCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      privateCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'Private Files',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: folderCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      folderCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'New Folder',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: assetsCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      assetsCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'All Assets',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Transform.scale(
                                              scale: 0.7,
                                              child: Checkbox(
                                                  value: designCheck,
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      designCheck = newValue!;
                                                    });
                                                  }),
                                            ),
                                            Text(
                                              'Design Draft',
                                              style: dashboardBodyText.copyWith(
                                                  fontSize: 8),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 16,
                                      ),
                                      Row(
                                        children: [
                                          const Spacer(),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                docCheck = true;
                                                videosCheck = true;
                                                workCheck = true;
                                                projectsCheck = true;
                                                photosCheck = true;
                                                privateCheck = true;
                                                folderCheck = true;
                                                assetsCheck = true;
                                                designCheck = true;
                                              });
                                            },
                                            child: Container(
                                              height: 32,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color:
                                                      lightGreyishDashboardColor,
                                                ),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Select All',
                                                  style: dashboardTextThree
                                                      .copyWith(
                                                    color: greyColor6,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 12,
                                          ),
                                          !docCheck &&
                                                  !videosCheck &&
                                                  !workCheck &&
                                                  !projectsCheck &&
                                                  !photosCheck &&
                                                  !privateCheck &&
                                                  !folderCheck &&
                                                  !assetsCheck &&
                                                  !designCheck
                                              ? Container(
                                                  height: 32,
                                                  width: 120,
                                                  decoration: BoxDecoration(
                                                    color: greenColor
                                                        .withOpacity(0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      saveSettings
                                                          ? Text(
                                                              'Save Settings',
                                                              style: dashboardTextThree
                                                                  .copyWith(
                                                                      color: Colors
                                                                          .white),
                                                            )
                                                          : SvgPicture.asset(
                                                              'assets/save.svg',
                                                              color:
                                                                  Colors.white,
                                                              height: 12,
                                                            ),
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                      saveSettings
                                                          ? Lottie.asset(
                                                              'assets/loading2.json',
                                                              height: 20)
                                                          : Text(
                                                              'Save Settings',
                                                              style: dashboardTextThree
                                                                  .copyWith(
                                                                      color: Colors
                                                                          .white),
                                                            )
                                                    ],
                                                  ),
                                                )
                                              : GestureDetector(
                                                  onTap: () {
                                                    if (saveSettings) {
                                                      setState(() {
                                                        saveSettings = false;
                                                      });
                                                    } else {
                                                      setState(() {
                                                        saveSettings = true;
                                                      });
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 32,
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: greenColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        saveSettings
                                                            ? Text(
                                                                'Save Settings',
                                                                style: dashboardTextThree
                                                                    .copyWith(
                                                                        color: Colors
                                                                            .white),
                                                              )
                                                            : SvgPicture.asset(
                                                                'assets/save.svg',
                                                                color: Colors
                                                                    .white,
                                                                height: 12,
                                                              ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        saveSettings
                                                            ? Lottie.asset(
                                                                'assets/loading2.json',
                                                                height: 20)
                                                            : Text(
                                                                'Save Settings',
                                                                style: dashboardTextThree
                                                                    .copyWith(
                                                                        color: Colors
                                                                            .white),
                                                              )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                          const Spacer(),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12, horizontal: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: borderColorDashboard),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'All Accounts (7)',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style:
                                                  dashboardHeadingTwo.copyWith(
                                                fontWeight: FontWeight.w500,
                                                color: greyColor5,
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          Expanded(
                                            child: Text(
                                              'Sort by',
                                              style:
                                                  dashboardTextThree.copyWith(
                                                color: sortByGreyishTextColor,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              height: 28,
                                              padding: const EdgeInsets.only(
                                                  left: 8),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: greyColor2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                              ),
                                              child: DropdownButton<String>(
                                                alignment:
                                                    AlignmentDirectional.center,
                                                value: dropdownValue,
                                                icon: const Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.0, right: 2),
                                                  child: Icon(
                                                      Icons.arrow_drop_down),
                                                ),
                                                iconSize: 20,
                                                elevation: 0,
                                                style:
                                                    dashboardTextThree.copyWith(
                                                  color: greyColor3,
                                                ),
                                                underline: Container(
                                                    // height: 2,
                                                    // color: const greyColor2,
                                                    ),
                                                onChanged: (String? newValue) {
                                                  setState(() {
                                                    dropdownValue = newValue;
                                                  });
                                                },
                                                items: <String>[
                                                  'None',
                                                  'Option 1',
                                                  'Option 2',
                                                  'Option 3'
                                                ].map<DropdownMenuItem<String>>(
                                                    (String value) {
                                                  return DropdownMenuItem<
                                                      String>(
                                                    value: value,
                                                    child: Container(
                                                      color: value == 'None'
                                                          ? Colors.white
                                                          : null,
                                                      child: Text(value),
                                                    ),
                                                  );
                                                }).toList(),
                                                dropdownColor: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.52,
                                          child: ListView(
                                            children: const [
                                              AllAccountsSingleWidget(
                                                email:
                                                    'mycloudstorage@gmail.com',
                                                sync: false,
                                                border: borderColorDashboard,
                                              ),
                                              AllAccountsSingleWidget(
                                                email:
                                                    'mycloudstorage@gmail.com',
                                                sync: true,
                                                border: borderColorDashboard,
                                              ),
                                              AllAccountsSingleWidget(
                                                email:
                                                    'mycloudstorage@gmail.com',
                                                sync: false,
                                                border: Color(0xFF2E5FBF),
                                              ),
                                              AllAccountsSingleWidget(
                                                email:
                                                    'mycloudstorage@gmail.com',
                                                sync: false,
                                                border: borderColorDashboard,
                                              ),
                                              AllAccountsSingleWidget(
                                                email:
                                                    'mycloudstorage@gmail.com',
                                                sync: true,
                                                border: borderColorDashboard,
                                              ),
                                              AllAccountsSingleWidget(
                                                email:
                                                    'mycloudstorage@gmail.com',
                                                sync: false,
                                                border: borderColorDashboard,
                                              ),
                                              AllAccountsSingleWidget(
                                                email:
                                                    'mycloudstorage@gmail.com',
                                                sync: false,
                                                border: borderColorDashboard,
                                              ),
                                            ],
                                          ))
                                    ]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
