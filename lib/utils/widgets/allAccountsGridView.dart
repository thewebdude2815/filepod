import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllAccountsGridView extends StatelessWidget {
  const AllAccountsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: borderColorDashboard),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/drive.svg',
                  height: 15,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'mycloudstorage@gmail.com',
                  style: dashboardTextThree.copyWith(
                      color: greyColor10, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Container(
                  height: 20,
                  width: 12,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: whitishColor2,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const Icon(
                    Icons.more_vert,
                    size: 12,
                    color: greyColor11,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Total files:',
                      style: dashboardText.copyWith(
                        fontWeight: FontWeight.w400,
                        color: sortByGreyishTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  60 Files',
                            style: dashboardText.copyWith(
                                color: greyColor5, fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // navigate to desired screen
                              })
                      ]),
                ),
                const SizedBox(
                  width: 16,
                ),
                RichText(
                  text: TextSpan(
                      text: 'Total files:',
                      style: dashboardText.copyWith(
                        fontWeight: FontWeight.w400,
                        color: sortByGreyishTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  60 Files',
                            style: dashboardText.copyWith(
                                color: greyColor5, fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // navigate to desired screen
                              })
                      ]),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'Total files:',
                      style: dashboardText.copyWith(
                        fontWeight: FontWeight.w400,
                        color: sortByGreyishTextColor,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  60 Files',
                            style: dashboardText.copyWith(
                                color: greyColor5, fontWeight: FontWeight.w500),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // navigate to desired screen
                              })
                      ]),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: LinearProgressIndicator(
                      minHeight: 6,
                      value: 0.5,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        Color(0xFF1EA362),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
