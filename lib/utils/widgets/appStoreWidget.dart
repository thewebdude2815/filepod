import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';

class AppStoreWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  const AppStoreWidget({
    required this.imageUrl,
    required this.name,
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
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: dashboardheadingThree,
          ),
        ],
      ),
    );
  }
}
