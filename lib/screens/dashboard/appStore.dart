import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/appStoreWidget.dart';
import 'package:flutter/material.dart';

class AppStore extends StatelessWidget {
  const AppStore({super.key});

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
              'Choose any service provider you want to add account for',
              style: dashboardBodyText,
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  AppStoreWidget(
                    imageUrl: 'assets/images/box.png',
                    name: 'Box',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  AppStoreWidget(
                    imageUrl: 'assets/images/gDrive.png',
                    name: 'Google Drive',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  AppStoreWidget(
                    imageUrl: 'assets/images/db.png',
                    name: 'Dropbox',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  AppStoreWidget(
                    imageUrl: 'assets/images/oneD.png',
                    name: 'One Drive',
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  AppStoreWidget(
                    imageUrl: 'assets/images/iCloud.png',
                    name: 'iCloud',
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
