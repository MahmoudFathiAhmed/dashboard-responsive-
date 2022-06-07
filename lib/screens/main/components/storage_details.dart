import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../resources/assets_manager.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(AppStrings.storageDetails,
            style: TextStyle(
                fontSize: AppSize.s18,
                fontWeight: FontWeight.w500
            ),
          ),
          SizedBox(height: defaultPadding,),
          Chart(),
          StorageInfoCard(
            svgSrc: IconAssets.documents,
            title: AppStrings.documentsFile,
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: IconAssets.media,
            title: AppStrings.mediaFile,
            amountOfFiles: '15.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: IconAssets.folder,
            title: AppStrings.otherFile,
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: IconAssets.unKnown,
            title: AppStrings.unknown,
            amountOfFiles: '1.3GB',
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}