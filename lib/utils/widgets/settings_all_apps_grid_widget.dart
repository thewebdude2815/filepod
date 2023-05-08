import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';

class SettingsAllAppsGridWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String size;
  const SettingsAllAppsGridWidget({
    required this.imageUrl,
    required this.name,
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 24),
      decoration: BoxDecoration(
          border: Border.all(
            color: greyColor12,
          ),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            height: 32,
          ),
          const SizedBox(
            width: 28,
          ),
          Column(
            children: [
              Text(
                name,
                style: dashboardheadingThree,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                size,
                style: dashboardbodyTwo.copyWith(
                    color: formFilledTextColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
