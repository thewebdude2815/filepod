import 'package:filepod/screens/dashboard/allAccountsSingle.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:filepod/utils/widgets/accountNameChip.dart';
import 'package:filepod/utils/widgets/allAccountsWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/widgets/allAccountsGridView.dart';

class AllAccounts extends StatefulWidget {
  const AllAccounts({super.key});

  @override
  State<AllAccounts> createState() => _AllAccountsState();
}

class _AllAccountsState extends State<AllAccounts> {
  String? dropdownValue = 'None';
  bool listView = true;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text('All Accounts', style: dashboardheadingThree),
                  const Spacer(),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: buttonBgColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  dropdownValue != 'None'
                      ? Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                            color: lightGreyishDashboardColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sorting applied',
                                style: dashboardbodyTwo.copyWith(
                                    color: darkGreyishDashboardColor,
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                  size: 10,
                                ),
                              )
                            ],
                          ),
                        )
                      : AccountNameChip(
                          accountName: 'Google Drive Accounts',
                          numberOfAccounts: 3,
                        ),
                  const Spacer(),
                  Text(
                    'Sort by',
                    style: dashboardTextThree.copyWith(
                      color: sortByGreyishTextColor,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    height: 32,
                    padding: const EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyColor2,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: DropdownButton<String>(
                      alignment: AlignmentDirectional.center,
                      value: dropdownValue,
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 16.0, right: 12),
                        child: Icon(Icons.arrow_drop_down),
                      ),
                      iconSize: 20,
                      elevation: 0,
                      style: dashboardTextThree.copyWith(
                        color: greyColor3,
                      ),
                      underline: Container(
                          // height: 2,
                          // color: const greyColor2,
                          ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>[
                        'None',
                        'File Size',
                        'Last Synched',
                        'Number Of Files'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                            color: value == 'None' ? Colors.white : null,
                            child: Text(value),
                          ),
                        );
                      }).toList(),
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        listView = true;
                      });
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: lightGreyishDashboardColor,
                        ),
                        color: listView
                            ? lightGreyishDashboardColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/options.svg',
                          color: greyColor4,
                          height: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        listView = false;
                      });
                    },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: greyColor2,
                        ),
                        color: listView == false
                            ? lightGreyishDashboardColor
                            : Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/grid.svg',
                          color: blackColor,
                          height: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              listView
                  ? ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) {
                                      return const AllAccountsSingle();
                                    },
                                  ),
                                );
                              },
                              child: const AllAccountsWidget()),
                        );
                      },
                    )
                  : Row(
                      children: const [
                        AllAccountsGridView(),
                        AllAccountsGridView(),
                      ],
                    ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  AccountNameChip(
                    accountName: 'Dropbox Accounts',
                    numberOfAccounts: 3,
                  ),
                  const Spacer(
                    flex: 2,
                  )
                ],
              ),

              const SizedBox(
                height: 12,
              ),
              listView
                  ? ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(bottom: 12.0),
                          child: AllAccountsWidget(),
                        );
                      },
                    )
                  : Row(
                      children: const [
                        AllAccountsGridView(),
                        AllAccountsGridView(),
                      ],
                    ),
              // SizedBox(
              //   height: 300,
              //   child: Row(
              //     children: const [
              //       Padding(
              //         padding: EdgeInsets.only(right: 12),
              //         child: AllAccountsGridView(),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(right: 12),
              //         child: AllAccountsGridView(),
              //       ),
              //       Padding(
              //         padding: EdgeInsets.only(right: 12),
              //         child: AllAccountsGridView(),
              //       )
              //     ],
              //   ),
              // )
              // SizedBox(
              //   height: 200,
              //   width: 200,
              //   child: ListView.builder(
              //       // scrollDirection: Axis.horizontal,
              //       shrinkWrap: true,
              //       itemCount: 3,
              //       itemBuilder: (context, index) {
              //         return const Padding(
              //           padding: EdgeInsets.only(right: 12),
              //           child: AllAccountsGridView(),
              //         );
              //       }),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
