import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WirelessNetworkWidget extends StatelessWidget {
  final String icon, heading, title, subTitle;
  const WirelessNetworkWidget({
    required this.heading,
    required this.icon,
    required this.subTitle,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: greyColor12),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: whitishColor3,
                child: SvgPicture.asset(
                  icon,
                  color: greyColor19,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                heading,
                style: dashboardHeadingOne.copyWith(
                    color: greyColor5,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: dashboardHeadingOne.copyWith(
                        color: greyColor5,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    subTitle,
                    style: dashboardHeadingOne.copyWith(
                        color: buttonBgColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                width: 100,
              ),
              SvgPicture.asset(
                'assets/check.svg',
                height: 20,
                width: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
