import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';

class SettingsAllAppsListWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String size;
  const SettingsAllAppsListWidget({
    required this.imageUrl,
    required this.name,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.symmetric(horizontal: 08, vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(
            color: greyColor12,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            height: 80,
          ),
          Text(
            name,
            style: dashboardheadingThree,
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: Text(
              size,
              style: dashboardbodyTwo.copyWith(
                  color: formFilledTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
