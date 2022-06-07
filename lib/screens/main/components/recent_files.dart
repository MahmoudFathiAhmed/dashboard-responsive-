import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/recent_files.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius:  BorderRadius.all(Radius.circular(AppSize.s10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.recentFiles,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columnSpacing: defaultPadding,
              horizontalMargin: AppSize.s0,
              columns: const [
                DataColumn(label: Text(AppStrings.fileName)),
                DataColumn(label: Text(AppStrings.date)),
                DataColumn(label: Text(AppStrings.size)),
              ],
              rows: List.generate(demoRecentFiles.length, (index) => recentFileDataRow(demoRecentFiles[index])),
            ),
          ),
        ],
      ),
    );
  }
}
DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
      cells: [
        DataCell(
          Row(
            children: [SvgPicture.asset(fileInfo.icon!,
              height: AppSize.s30,
              width: AppSize.s30,
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(fileInfo.title!),
              ),
            ],
          ),
        ),
        DataCell(Text(fileInfo.date!)),
        DataCell(Text(fileInfo.size!)),
      ]
  );
}