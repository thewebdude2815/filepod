import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final double height, width;
  TextStyle? textStyle;
  final bool hasIcon;
  String? iconAddress;
  CommonButton({
    required this.fillColor,
    required this.height,
    required this.text,
    this.textStyle,
    this.iconAddress,
    required this.width,
    required this.hasIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: hasIcon
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  iconAddress ?? 'assets/save.svg',
                  color: whiteColor,
                  height: 24,
                  width: 24,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'Save',
                  style: dashboardBodyText.copyWith(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )
              ],
            )
          : Center(
              child: Text(
                text,
                style: textStyle ??
                    dashboardBodyText.copyWith(
                        color: whiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
              ),
            ),
    );
  }
}
