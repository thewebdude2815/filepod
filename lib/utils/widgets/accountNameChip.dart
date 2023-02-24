import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/material.dart';

class AccountNameChip extends StatelessWidget {
  String accountName;
  int numberOfAccounts;
  AccountNameChip({
    required this.accountName,
    required this.numberOfAccounts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: lightGreyishDashboardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          '$accountName (${numberOfAccounts.toString()})',
          style: dashboardbodyTwo.copyWith(
              color: darkGreyishDashboardColor, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
