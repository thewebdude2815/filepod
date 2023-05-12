import 'package:filepod/config/routes.dart';
import 'package:filepod/utils/appConstants.dart';
import 'package:filepod/utils/texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DriveOverView extends StatefulWidget {
  const DriveOverView({super.key});

  @override
  State<DriveOverView> createState() => _DriveOverViewState();
}

class _DriveOverViewState extends State<DriveOverView> {
  final List<ChartData> chartData = [
    ChartData(
      'David',
      25,
      const Color.fromRGBO(9, 0, 136, 1),
    ),
    ChartData(
      'Steve',
      38,
      const Color.fromRGBO(147, 0, 119, 1),
    ),
    ChartData(
      'Jack',
      34,
      const Color.fromRGBO(228, 0, 124, 1),
    ),
    ChartData(
      'Others',
      52,
      const Color.fromRGBO(255, 189, 57, 1),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () {
                Get.toNamed(routeLogin);
              },
              child: Text('Drive Overview', style: dashboardheadingThree)),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            height: MediaQuery.of(context).size.height * 0.45,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                    color: blackColor.withOpacity(0.11),
                    blurRadius: 10,
                    spreadRadius: 4)
              ],
            ),
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: SfCircularChart(
                                annotations: <CircularChartAnnotation>[
                                  CircularChartAnnotation(
                                    widget: const SizedBox(
                                      child: Text(
                                        '65%',
                                        style: TextStyle(
                                          color: Color(0xFF626A6C),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                                series: <CircularSeries>[
                                  // Renders doughnut chart
                                  DoughnutSeries<ChartData, String>(
                                      dataSource: chartData,
                                      pointColorMapper: (ChartData data, _) =>
                                          data.color,
                                      xValueMapper: (ChartData data, _) =>
                                          data.x,
                                      yValueMapper: (ChartData data, _) =>
                                          data.y,
                                      radius: '110%')
                                ]),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Storage Overview',
                                  style: dashboardheadingThree.copyWith(
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: 'Total storage:',
                                      style: dashboardText.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: sortByGreyishTextColor,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: '  1TB',
                                            style: dashboardText.copyWith(
                                                color: greyColor5,
                                                fontWeight: FontWeight.w500),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                // navigate to desired screen
                                              })
                                      ]),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                RichText(
                                  text: TextSpan(
                                      text: 'Available storage:',
                                      style: dashboardText.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: sortByGreyishTextColor,
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '  364 GB',
                                            style: dashboardText.copyWith(
                                                color: greyColor5,
                                                fontWeight: FontWeight.w500),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                // navigate to desired screen
                                              })
                                      ]),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: LinearProgressIndicator(
                                    minHeight: 6,
                                    value: 0.5,
                                    backgroundColor:
                                        Colors.grey.withOpacity(0.2),
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                      Color(0xFFFAA9A9),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: SvgPicture.asset(
                                        'assets/drive.svg',
                                        height: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        'andrew@gmail.com +2',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: dashboardTextThree,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 6),
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                          child: Text('110 GB',
                                              style: dashboardTextTwo.copyWith(
                                                  fontSize: 6)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SvgPicture.asset(
                                        'assets/drive.svg',
                                        height: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        'andrew@gmail.com +2',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: dashboardTextThree,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 6),
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                          child: Text('110 GB',
                                              style: dashboardTextTwo.copyWith(
                                                  fontSize: 6)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: SvgPicture.asset(
                                        'assets/drive.svg',
                                        height: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        'andrew@gmail.com +2',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: dashboardTextThree,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 6),
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                          child: Text('110 GB',
                                              style: dashboardTextTwo.copyWith(
                                                  fontSize: 6)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: SvgPicture.asset(
                                        'assets/drive.svg',
                                        height: 20,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        'andrew@gmail.com +2',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: dashboardTextThree,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 2,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 6),
                                        decoration: BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        child: Center(
                                          child: Text('110 GB',
                                              style: dashboardTextTwo.copyWith(
                                                  fontSize: 6)),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
