import 'package:filepod/utils/appConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListAndGridViewWidget extends StatelessWidget {
  final bool isListView;
  final bool isSelected;
  final void Function() onPressed;

  const ListAndGridViewWidget({
    required this.isListView,
    required this.isSelected,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
            color: isSelected ? lightGreyishDashboardColor : whiteColor,
            border: Border.all(
                color: isSelected ? greyColor2 : lightGreyishDashboardColor),
            borderRadius: BorderRadius.circular(
              4,
            )),
        child: Center(
            child: SvgPicture.asset(
          isListView ? 'assets/list.svg' : 'assets/grid.svg',
          color: greyColor4,
          height: 12.75,
          width: 13.5,
        )),
      ),
    );
  }
}
