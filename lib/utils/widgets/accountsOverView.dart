import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/appStoreWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountsOverView extends StatelessWidget {
  const AccountsOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Accounts Overview',
            style: dashboardheadingThree,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: blackColor.withOpacity(0.11),
                    blurRadius: 10,
                    spreadRadius: 4)
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Accounts',
                              style:
                                  dashboardheadingThree.copyWith(fontSize: 12),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Total accounts:',
                                  style: dashboardText.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: sortByGreyishTextColor,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '  7',
                                        style: dashboardText.copyWith(
                                            color: greyColor5,
                                            fontWeight: FontWeight.w500),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // navigate to desired screen
                                          })
                                  ]),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Total usage:',
                                  style: dashboardText.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: sortByGreyishTextColor,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '  660 GB',
                                        style: dashboardText.copyWith(
                                            color: greyColor5,
                                            fontWeight: FontWeight.w500),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            // navigate to desired screen
                                          })
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
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
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 12),
                                          decoration: const BoxDecoration(
                                            border: Border(
                                              bottom: BorderSide(
                                                  color: borderColorDashboard),
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
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Add Account',
                                                    style:
                                                        dashboardText.copyWith(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: greyColor5,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 4,
                                                  ),
                                                  Text(
                                                    'Add new account to Filepod',
                                                    style: dashboardTextThree
                                                        .copyWith(
                                                            color: greyColor9,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const CircleAvatar(
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
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: Text(
                                            'Choose any service provider you want to add account for',
                                            style: dashboardBodyText,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12.0),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: const [
                                                AppStoreWidget(
                                                  imageUrl:
                                                      'assets/images/gDrive.png',
                                                  name: 'Google Drive',
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                AppStoreWidget(
                                                  imageUrl:
                                                      'assets/images/db.png',
                                                  name: 'Dropbox',
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                AppStoreWidget(
                                                  imageUrl:
                                                      'assets/images/oneD.png',
                                                  name: 'One Drive',
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                AppStoreWidget(
                                                  imageUrl:
                                                      'assets/images/iCloud.png',
                                                  name: 'iCloud',
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 32,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                            color: buttonBgColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 12,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Add Account',
                                style:
                                    dashboardText.copyWith(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/drive.svg',
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'andrew@gmail.com',
                            style: dashboardTextThree,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/drive.svg',
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'andrew@gmail.com',
                            style: dashboardTextThree,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/drive.svg',
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'andrew@gmail.com',
                            style: dashboardTextThree,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/drive.svg',
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'andrew@gmail.com',
                            style: dashboardTextThree,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/drive.svg',
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'andrew@gmail.com',
                            style: dashboardTextThree,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/drive.svg',
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'andrew@gmail.com',
                            style: dashboardTextThree,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/drive.svg',
                            height: 12,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            'andrew@gmail.com',
                            style: dashboardTextThree,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 20,
                        width: 100,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: borderColorDashboard),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Text(
                            'View All Accounts',
                            style: dashboardTextTwo.copyWith(
                              fontSize: 6,
                              color: greyColor10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
