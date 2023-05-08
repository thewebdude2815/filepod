import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';

class SettingsAppsAllAppsEnabledWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const SettingsAppsAllAppsEnabledWidget({
    required this.text,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
      decoration: BoxDecoration(
        color: isSelected ? lightGreyishDashboardColor : whiteColor,
        border: Border.all(
            color: isSelected ? lightGreyishDashboardColor : greyColor2),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isSelected ? 4 : 0),
            bottomLeft: Radius.circular(isSelected ? 4 : 0),
            topRight: Radius.circular(!isSelected ? 4 : 0),
            bottomRight: Radius.circular(!isSelected ? 4 : 0)),
      ),
      child: Center(
        child: Text(
          text,
          style: isSelected
              ? dashboardHeadingTwo.copyWith(
                  fontSize: 12, fontWeight: FontWeight.w500, color: blackColor)
              : dashboardHeadingTwo.copyWith(
                  fontSize: 12, fontWeight: FontWeight.w500, color: greyColor4),
        ),
      ),
    );
  }
}
