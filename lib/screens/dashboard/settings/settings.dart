import 'package:filepod/controller/settings_controller.dart';
import 'package:filepod/screens/dashboard/settings/aboutFilePod.dart';
import 'package:filepod/screens/dashboard/settings/changePassword.dart';
import 'package:filepod/screens/dashboard/settings/dateAndTime.dart';
import 'package:filepod/screens/dashboard/settings/profile.dart';
import 'package:filepod/screens/dashboard/settings/settingsApps.dart';
import 'package:filepod/screens/dashboard/settings/settingsAppsSingle.dart';
import 'package:filepod/screens/dashboard/settings/settingsMain.dart';
import 'package:filepod/screens/dashboard/settings/storage.dart';
import 'package:filepod/screens/dashboard/settings/webDav.dart';
import 'package:filepod/screens/dashboard/settings/wifi.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(builder: (settingsController) {
      return settingsController.currentPage.value == 'main'
          ? const SettingsMain()
          : settingsController.currentPage.value == 'profile'
              ? const Profile()
              : settingsController.currentPage.value == 'changePassword'
                  ? const ChangePassword()
                  : settingsController.currentPage.value == 'aboutFilepod'
                      ? const AboutFilepod()
                      : settingsController.currentPage.value == 'wifi'
                          ? const Wifi()
                          : settingsController.currentPage.value == 'apps'
                              ? const SettingsApps()
                              : settingsController.currentPage.value ==
                                      'storage'
                                  ? const SettingsStorage()
                                  : settingsController.currentPage.value ==
                                          'webDav'
                                      ? const SettingsWebDav()
                                      : settingsController.currentPage.value ==
                                              'date'
                                          ? const SettingsDateAndTime()
                                          : settingsController
                                                      .currentPage.value ==
                                                  'appsSingle'
                                              ? const SettingsAppsSingle()
                                              : const Profile();
    });
  }
}
