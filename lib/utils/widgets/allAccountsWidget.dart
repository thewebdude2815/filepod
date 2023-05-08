// ignore_for_file: file_names

import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllAccountsWidget extends StatelessWidget {
  const AllAccountsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: borderColorDashboard),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/drive.svg',
                height: 15,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                'mycloudstorage@gmail.com',
                style: dashboardTextThree.copyWith(
                    color: greyColor10, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              Container(
                height: 20,
                width: 12,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: whitishColor2,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: const Icon(
                  Icons.more_vert,
                  size: 12,
                  color: greyColor11,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: whitishColor2,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/totalFiles.svg',
                          height: 12,
                          color: greyColor8,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: 'Total files:',
                            style: dashboardText.copyWith(
                              fontWeight: FontWeight.w400,
                              color: sortByGreyishTextColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  60 Files',
                                  style: dashboardText.copyWith(
                                      color: greyColor5,
                                      fontWeight: FontWeight.w500),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: whitishColor2,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/directory.svg',
                          height: 10,
                          color: greyColor8,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: 'Total Directories:',
                            style: dashboardText.copyWith(
                              fontWeight: FontWeight.w400,
                              color: sortByGreyishTextColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  6',
                                  style: dashboardText.copyWith(
                                      color: greyColor5,
                                      fontWeight: FontWeight.w500),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: whitishColor2,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/time.svg',
                          height: 12,
                          color: greyColor8,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: 'Last Synced:',
                            style: dashboardText.copyWith(
                              fontWeight: FontWeight.w400,
                              color: sortByGreyishTextColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  5 minutes ago',
                                  style: dashboardText.copyWith(
                                      color: greyColor5,
                                      fontWeight: FontWeight.w500),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'Total usage:',
                          style: dashboardText.copyWith(
                            fontWeight: FontWeight.w400,
                            color: sortByGreyishTextColor,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: '  60 GB',
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
                      height: 4,
                    ),
                    SizedBox(
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          minHeight: 6,
                          value: 0.5,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFF1EA362),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
