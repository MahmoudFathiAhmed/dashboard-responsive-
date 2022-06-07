import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../resources/values_manger.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: AppSize.s200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -AppSize.s90,
              sectionsSpace: AppSize.s0,
              centerSpaceRadius: AppSize.s70,
              sections: pieChartSelectionData,
            ),
          ),
          Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: defaultPadding,),
                  Text('29.1', style: Theme.of(context)
                      .textTheme
                      .headline4?.
                  copyWith(color: Colors.white, fontWeight: FontWeight.w600, height: 0.5),
                  ),
                  const Text('of 128 GB'
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    value: AppSize.s25,
    color: primaryColor,
    showTitle: false,
    radius: AppSize.s25,
  ),
  PieChartSectionData(
    value: AppSize.s20,
    color: const Color(0xFF26E5FF),
    showTitle: false,
    radius: AppSize.s22,
  ),
  PieChartSectionData(
    value: AppSize.s10,
    color: const Color(0xFFFFCF26),
    showTitle: false,
    radius: AppSize.s19,
  ),
  PieChartSectionData(
    value: AppSize.s15,
    color: const Color(0xFFEF2727),
    showTitle: false,
    radius: AppSize.s16,
  ),
  PieChartSectionData(
    value: AppSize.s15,
    color: primaryColor.withOpacity(AppSize.s0_1),
    showTitle: false,
    radius: AppSize.s13,
  ),
];