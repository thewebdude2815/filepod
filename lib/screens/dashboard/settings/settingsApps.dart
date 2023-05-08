import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/list_and_grid_view_widget.dart';
import 'package:filepod/utils/widgets/settings_all_apps_grid_widget.dart';
import 'package:filepod/utils/widgets/settings_all_apps_list_widget.dart';
import 'package:filepod/utils/widgets/settings_apps_all_apps_enabled_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SettingsApps extends StatefulWidget {
  const SettingsApps({super.key});

  @override
  State<SettingsApps> createState() => _SettingsAppsState();
}

class _SettingsAppsState extends State<SettingsApps> {
  bool toggleValue = false;
  bool isListView = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              RichText(
                text: TextSpan(
                    text: 'Settings /',
                    style: dashboardheadingThree,
                    children: <TextSpan>[
                      TextSpan(
                          text: '  Apps',
                          style: dashboardText.copyWith(
                              color: greyColor5, fontWeight: FontWeight.w500),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            })
                    ]),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: const [
                    SettingsAppsAllAppsEnabledWidget(
                      isSelected: true,
                      text: 'All Apps',
                    ),
                    SettingsAppsAllAppsEnabledWidget(
                      isSelected: false,
                      text: 'Enabled',
                    ),
                  ]),
                  Row(
                    children: [
                      ListAndGridViewWidget(
                        isListView: true,
                        isSelected: isListView,
                        onPressed: () {
                          setState(() {
                            isListView = true;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      ListAndGridViewWidget(
                        isListView: false,
                        isSelected: !isListView,
                        onPressed: () {
                          setState(() {
                            isListView = false;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              !isListView
                  ? SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SettingsAllAppsListWidget(
                            imageUrl: 'assets/images/box.png',
                            name: 'Box',
                            size: '28.3 MB',
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          SettingsAllAppsListWidget(
                            imageUrl: 'assets/images/gDrive.png',
                            name: 'Google Drive',
                            size: '28.3 MB',
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          SettingsAllAppsListWidget(
                            imageUrl: 'assets/images/db.png',
                            name: 'Dropbox',
                            size: '28.3 MB',
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const SettingsAllAppsGridWidget(
                          imageUrl: 'assets/images/db.png',
                          name: 'Dropbox',
                          size: '28.3 MB',
                        );
                      }),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
