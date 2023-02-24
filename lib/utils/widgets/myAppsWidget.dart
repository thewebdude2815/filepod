import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';

class MyAppsWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  const MyAppsWidget({
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
          Text(
            name,
            style: dashboardheadingThree,
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFE5ECEE),
                )),
            child: Center(
              child: Text(
                'Uninstall',
                style: dashboardbodyTwo,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
