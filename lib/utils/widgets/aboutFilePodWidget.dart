import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';

class AboutFilePodWidget extends StatelessWidget {
  final String mainText;
  final String subText;
  const AboutFilePodWidget({
    required this.mainText,
    required this.subText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            mainText,
            style: dashboardText.copyWith(
                fontWeight: FontWeight.w500, fontSize: 16, color: greyColor5),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            subText,
            style: dashboardText.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: formFilledTextColor),
          ),
        ),
      ],
    );
  }
}
