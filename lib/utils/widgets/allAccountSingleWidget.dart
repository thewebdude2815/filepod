import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AllAccountsSingleWidget extends StatelessWidget {
  final bool sync;
  final String email;
  final Color border;
  const AllAccountsSingleWidget({
    required this.border,
    required this.email,
    required this.sync,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: border),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
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
                email,
                style: dashboardTextThree.copyWith(
                    color: greyColor10, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: whitishColor2,
                      child: Center(
                        child: SvgPicture.asset(
                          sync ? 'assets/sync2.svg' : 'assets/time.svg',
                          height: 10,
                          color: greyColor8,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: sync ? '' : 'Last synched: ',
                            style: GoogleFonts.inter(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: sortByGreyishTextColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: sync
                                      ? 'Sync in progress'
                                      : '  30 minutes ago',
                                  style: GoogleFonts.inter(
                                      fontSize: 8,
                                      color: greyColor5,
                                      fontWeight: FontWeight.w500),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: whitishColor2,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/memory.svg',
                          height: 12,
                          color: greyColor8,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                            text: 'File Size:',
                            style: GoogleFonts.inter(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: sortByGreyishTextColor,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '  50 MB',
                                  style: GoogleFonts.inter(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600,
                                    color: sortByGreyishTextColor,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    })
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
