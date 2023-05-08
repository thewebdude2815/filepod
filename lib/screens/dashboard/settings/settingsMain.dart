import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/deviceSettingsWidget.dart';
import 'package:filepod/utils/widgets/list_and_grid_view_widget.dart';
import 'package:filepod/utils/widgets/settings_all_apps_grid_widget.dart';
import 'package:filepod/utils/widgets/settings_all_apps_list_widget.dart';
import 'package:filepod/utils/widgets/settings_apps_all_apps_enabled_widget.dart';
import 'package:filepod/utils/widgets/storageColorWithTextWidget.dart';
import 'package:filepod/utils/widgets/wirelessNetworkWidget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingsMain extends StatefulWidget {
  const SettingsMain({super.key});

  @override
  State<SettingsMain> createState() => _SettingsMainState();
}

class _SettingsMainState extends State<SettingsMain> {
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
              Text(
                'Settings',
                style: dashboardheadingThree,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Wireless & Network',
                style: dashboardText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: greyColor9),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    WirelessNetworkWidget(
                        heading: 'Wifi',
                        icon: 'assets/wifi.svg',
                        subTitle: 'Bluestack',
                        title: 'Connected'),
                    SizedBox(
                      width: 32,
                    ),
                    WirelessNetworkWidget(
                        heading: 'WebDav',
                        icon: 'assets/sim.svg',
                        subTitle: 'RNDIS',
                        title: 'WLAN 10.0.2.15'),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                'Device',
                style: dashboardText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: greyColor9),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    DeviceSettingsWidget(
                        heading: 'Storage',
                        icon: 'assets/storage.svg',
                        usageHeading: 'Total usage: ',
                        usage: '64 GB / 1 TB'),
                    SizedBox(
                      width: 32,
                    ),
                    DeviceSettingsWidget(
                        heading: 'Apps',
                        icon: 'assets/apps.svg',
                        usageHeading: 'Remaining: ',
                        usage: '90%'),
                  ],
                ),
              ),
              const SizedBox(
                height: 36,
              ),
              Text(
                'Personal',
                style: dashboardText.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: greyColor9),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    WirelessNetworkWidget(
                        heading: 'Date & Time',
                        icon: 'assets/calendar.svg',
                        subTitle: 'Automatic',
                        title: '24 hours format'),
                    SizedBox(
                      width: 32,
                    ),
                    WirelessNetworkWidget(
                        heading: 'About Filepod',
                        icon: 'assets/info.svg',
                        subTitle: 'Software Update',
                        title: 'Available 1.0.01'),
                  ],
                ),
              ),
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
