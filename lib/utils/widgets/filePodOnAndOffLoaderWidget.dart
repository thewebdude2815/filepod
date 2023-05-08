import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FilePodOnAndOffLoaderWidget extends StatelessWidget {
  const FilePodOnAndOffLoaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Container(
        color: whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please wait..',
              style: headingFont.copyWith(
                  color: formTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 36,
            ),
            Lottie.asset('assets/loading2.json', height: 56, width: 56)
          ],
        ),
      ),
    );
  }
}
