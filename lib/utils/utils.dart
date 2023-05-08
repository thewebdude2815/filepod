import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Utils {
  static void showToastMessage(String message) {
    Get.snackbar(
      "",
      "",
      duration: const Duration(milliseconds: 1200),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 5,
      titleText: Row(
        children: [
          SvgPicture.asset(
            'assets/info.svg',
            color: whiteColor,
            height: 16.67,
            width: 16.67,
          ),
          const SizedBox(
            width: 16.67,
          ),
          Text(
            message,
            style: dashboardHeadingOne.copyWith(
                color: whiteColor, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
      messageText: const SizedBox(),
      padding: const EdgeInsets.only(bottom: 16, top: 20, left: 16, right: 16),
      margin: const EdgeInsets.only(bottom: 40, left: 32, right: 32),
      backgroundColor: greenColor2,
    );
  }

  static PopupMenuItem nameAndEmail() {
    return PopupMenuItem(
      height: 40,
      child: SizedBox(
        width: 180,
        child: Row(
          children: [
            const SizedBox(
              width: 3,
            ),
            Image.asset(
              'assets/user.png',
              height: 30,
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Andrew Lam',
                  style: dashboardHeadingTwo.copyWith(color: Colors.black),
                ),
                Text(
                  'andrew.lam@gmail.com',
                  style: dashboardbodyTwo.copyWith(
                    color: const Color(0xFF8D8D8D),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  static PopupMenuItem divider() {
    return const PopupMenuItem(
      height: 10,
      child: Divider(),
    );
  }

  static PopupMenuItem buildPopupMenuItemDownload(
      String title, String svg, int position) {
    return PopupMenuItem(
      child: SizedBox(
        width: 180,
        child: Row(
          children: [
            Expanded(
              child: CircleAvatar(
                radius: 15,
                backgroundColor: const Color(0xFFF3F7F8),
                child: SvgPicture.asset(
                  svg,
                  height: 12,
                  color: const Color(0xFF545764),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 2,
              child: Text(
                title,
                style: dashboardTextThree,
              ),
            ),
            const Spacer(),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFF3F7F8),
              ),
              child: const Padding(
                padding: EdgeInsets.zero,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 10,
                  color: Color(0xFF545764),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static PopupMenuItem shutDownFilePod() {
    return PopupMenuItem(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        width: 266,
        child: Column(
          children: [
            Center(
              child: Text(
                'Do You Want To Shutdown Filepod',
                style: dashboardTextThree.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: greyColor4),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: greyColor25),
                    ),
                    child: Center(
                      child: Text(
                        'No',
                        style: dashboardTextThree.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: greyColor4),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: buttonBgColor),
                    child: Center(
                      child: Text(
                        'Yes',
                        style: dashboardTextThree.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static PopupMenuItem restartFilePod() {
    return PopupMenuItem(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        width: 266,
        child: Column(
          children: [
            Center(
              child: Text(
                'Do You Want To Restart Filepod',
                style: dashboardTextThree.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: greyColor4),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: greyColor25),
                    ),
                    child: Center(
                      child: Text(
                        'No',
                        style: dashboardTextThree.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: greyColor4),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 14),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: buttonBgColor),
                    child: Center(
                      child: Text(
                        'Yes',
                        style: dashboardTextThree.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: whiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  static deleteAlert(context) {
    Alert(
      padding: const EdgeInsets.all(16),
      context: context,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/trash.png',
            height: 50,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Are you sure you wish to delete your account?',
            style: dashboardHeadingOne.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Please keep in mind that deleting your account will lose entire data of this account and this process cannot be reversible.',
            style: TextStyle(
              fontFamily: 'Museo',
              color: Color(0xFF363948),
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          border: Border.all(
            color: const Color(0xFFBDBDBD),
          ),
          onPressed: () => Get.back(),
          color: Colors.white,
          child: const Text(
            "No",
            style: TextStyle(color: Color(0xFF525659), fontSize: 12),
          ),
        ),
        DialogButton(
          onPressed: () {
            confirmdeleteAlert(context);
          },
          color: const Color(0xFFFE857D),
          child: const Text(
            "Yes, Delete",
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontFamily: 'Museo'),
          ),
        ),
      ],
    ).show();
  }

  static confirmdeleteAlert(context) {
    Alert(
      padding: const EdgeInsets.all(16),
      context: context,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/ .png',
            height: 70,
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            'Account Deleted!',
            style: dashboardHeadingOne.copyWith(color: Colors.black),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'The requested account has beed deleted now.',
            style: TextStyle(
              fontFamily: 'Museo',
              color: Color(0xFF363948),
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          border: Border.all(
            color: const Color(0xFFBDBDBD),
          ),
          onPressed: () => Get.back(),
          color: Colors.white,
          child: const Text(
            "OK",
            style: TextStyle(color: Color(0xFF525659), fontSize: 12),
          ),
        ),
      ],
    ).show();
  }
}
