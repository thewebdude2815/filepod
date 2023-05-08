import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeviceSettingsWidget extends StatelessWidget {
  final String icon, heading, usage, usageHeading;
  const DeviceSettingsWidget({
    required this.heading,
    required this.icon,
    required this.usage,
    required this.usageHeading,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: 245,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: greyColor12),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: whitishColor3,
                child: SvgPicture.asset(
                  icon,
                  color: greyColor19,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                heading,
                style: dashboardHeadingOne.copyWith(
                    color: greyColor5,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          RichText(
            text: TextSpan(
              text: usageHeading,
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
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              minHeight: 6,
              value: 0.5,
              backgroundColor: Colors.grey.withOpacity(0.2),
              valueColor: const AlwaysStoppedAnimation<Color>(
                buttonBgColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
