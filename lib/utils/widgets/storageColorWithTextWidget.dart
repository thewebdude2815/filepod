import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';

class StorageColorWithTextWidget extends StatelessWidget {
  final Color color;
  final String text;
  const StorageColorWithTextWidget({
    required this.color,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 17,
          width: 17,
          color: color,
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          text,
          style: dashboardText.copyWith(
              color: greyColor21, fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ],
    );
  }
}
