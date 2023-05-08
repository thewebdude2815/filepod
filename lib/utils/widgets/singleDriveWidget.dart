import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SingleDriveWidget extends StatelessWidget {
  final String driveLogo;
  final String driveName;
  final int files;
  final String usage;
  final int driveAccounts;
  final Color driveBgColor;

  const SingleDriveWidget(
      {super.key,
      required this.driveAccounts,
      required this.driveBgColor,
      required this.driveLogo,
      required this.driveName,
      required this.files,
      required this.usage});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      decoration: BoxDecoration(
          border: Border.all(
            color: greyColor12,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: driveBgColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: SvgPicture.asset(
                        driveLogo,
                        height: 25,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                driveAccounts > 0
                    ? Expanded(
                        child: Center(
                          child: Text(
                            '+${driveAccounts.toString()}',
                            style: dashboardText.copyWith(
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    : Container(),
                const Spacer(),
                const Expanded(
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: greyColor11,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            driveName,
            style: dashboardHeadingTwo.copyWith(color: greyColor5),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '${files.toString()} Files',
            style: dashboardTextThree.copyWith(
              color: sortByGreyishTextColor,
            ),
          ),
          const SizedBox(
            height: 24,
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
                  text: usage,
                  style: dashboardText.copyWith(
                      color: greyColor5, fontWeight: FontWeight.w500),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // navigate to desired screen
                    },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              minHeight: 6,
              value: 0.5,
              backgroundColor: Colors.grey.withOpacity(0.2),
              valueColor: const AlwaysStoppedAnimation<Color>(
                greenColor3,
              ),
            ),
          )
        ],
      ),
    );
  }
}
