import 'package:filepod/utils/appConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../texts.dart';

class CommonSwitchWidget extends StatefulWidget {
  final String text;
  final bool toggleValue, isColumn;
  String? text2;
  final double height;
  CommonSwitchWidget(
      {super.key,
      required this.text,
      required this.toggleValue,
      required this.isColumn,
      this.text2,
      required this.height});

  @override
  State<CommonSwitchWidget> createState() => _CommonSwitchWidgetState();
}

class _CommonSwitchWidgetState extends State<CommonSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      // width: double.infinity,
      // width: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Flutter Switch Pacakge added in pubspec.yaml
          FlutterSwitch(
              inactiveColor: switchOffColor,
              activeColor: greenSwitchColor,
              inactiveToggleColor: Colors.white,
              height: 16.0,
              width: 28.0,
              toggleSize: 10.0,
              duration: const Duration(milliseconds: 200),
              value: widget.toggleValue,
              onToggle: (v) {
                setState(() {
                  widget.toggleValue != v;
                });
              }),
          const SizedBox(
            width: 5.0,
          ),
          widget.isColumn
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.text,
                      style: dashboardHeadingTwo.copyWith(
                          color: formFilledTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      widget.text2 ?? "",
                      style: dashboardHeadingTwo.copyWith(
                          color: formTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              : Text(
                  widget.text,
                  style: dashboardHeadingTwo.copyWith(
                      color: formFilledTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
        ],
      ),
    );
  }
}
