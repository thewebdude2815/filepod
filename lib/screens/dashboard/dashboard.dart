import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/accountsOverView.dart';
import 'package:filepod/utils/widgets/driveOverView.dart';
import 'package:filepod/utils/widgets/drivePopupWidget.dart';
import 'package:filepod/utils/widgets/filePodOnAndOffLoaderWidget.dart';
import 'package:filepod/utils/widgets/singleDriveWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool showLoading = false;
  @override
  Widget build(BuildContext context) {
    return showLoading
        ? const FilePodOnAndOffLoaderWidget()
        : Expanded(
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
                      children: const [
                        // Drive Overview
                        DriveOverView(),
                        SizedBox(
                          width: 8,
                        ),
                        // Accounts OverView

                        AccountsOverView(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Data Storage',
                          style: dashboardheadingThree,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        // width: 400,
                                        child: AlertDialog(
                                          insetPadding: EdgeInsets.zero,
                                          contentPadding: EdgeInsets.zero,
                                          content: SizedBox(
                                            width: 500,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 8,
                                                      horizontal: 12),
                                                  decoration:
                                                      const BoxDecoration(
                                                    border: Border(
                                                      bottom: BorderSide(
                                                          color:
                                                              borderColorDashboard),
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        'assets/drive.svg',
                                                        height: 30,
                                                      ),
                                                      const SizedBox(
                                                        width: 12,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Google Drive',
                                                            style: dashboardText
                                                                .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: greyColor5,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 4,
                                                          ),
                                                          Text(
                                                            'Total Accounts: 3',
                                                            style: dashboardTextThree.copyWith(
                                                                color:
                                                                    greyColor7,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ],
                                                      ),
                                                      const Spacer(),
                                                      const CircleAvatar(
                                                        radius: 15,
                                                        backgroundColor:
                                                            whitishColor2,
                                                        child: Center(
                                                          child: Icon(
                                                            Icons.close,
                                                            size: 15,
                                                            color: greyColor8,
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 16,
                                                ),
                                                SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal:
                                                                    12.0),
                                                        child: Text(
                                                          'All Accounts',
                                                          style: dashboardText
                                                              .copyWith(
                                                                  color:
                                                                      greyColor5,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    12.0),
                                                        child: DrivePopWidget(),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    12.0),
                                                        child: DrivePopWidget(),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                      const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    12.0),
                                                        child: DrivePopWidget(),
                                                      ),
                                                      const SizedBox(
                                                        height: 12,
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: const SingleDriveWidget(
                                    driveLogo: 'assets/drive.svg',
                                    driveBgColor: Color(0xFFF3F8FF),
                                    files: 150,
                                    driveName: 'Google Drive',
                                    usage: '  64 GB / 8 GB / 4 GB',
                                    driveAccounts: 2),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Expanded(
                              child: SingleDriveWidget(
                                  driveLogo: 'assets/dropbox.svg',
                                  driveBgColor: Color(0xFFE7F0FF),
                                  files: 360,
                                  driveName: 'Dropbox',
                                  usage: '  64 GB / 8 GB / 4 GB',
                                  driveAccounts: 1),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Expanded(
                              child: SingleDriveWidget(
                                  driveLogo: 'assets/drive.svg',
                                  driveBgColor: Color(0xFFE1F3FF),
                                  files: 450,
                                  driveName: 'One Drive',
                                  usage: '  64 GB / 8 GB / 4 GB',
                                  driveAccounts: 0),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            const Expanded(
                              child: SingleDriveWidget(
                                  driveLogo: 'assets/drive.svg',
                                  driveBgColor: Color(0xFFE7F8FF),
                                  files: 190,
                                  driveName: 'iCloud',
                                  usage: '  64 GB / 8 GB / 4 GB',
                                  driveAccounts: 0),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
