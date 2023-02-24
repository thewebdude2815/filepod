import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/myAppsWidget.dart';
import 'package:flutter/material.dart';

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            Text('App Store', style: dashboardheadingThree),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Here’s available plugins for your account',
              style: dashboardBodyText,
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  MyAppsWidget(
                    imageUrl: 'assets/images/box.png',
                    name: 'Box',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  MyAppsWidget(
                    imageUrl: 'assets/images/gDrive.png',
                    name: 'Google Drive',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  MyAppsWidget(
                    imageUrl: 'assets/images/db.png',
                    name: 'Dropbox',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
