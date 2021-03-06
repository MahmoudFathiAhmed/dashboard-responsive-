import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key, required this.title, required this.svgSrc, required this.amountOfFiles, required this.numOfFiles,
  }) : super(key: key);
  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.only(top: defaultPadding/2),
      decoration: BoxDecoration(
        border: Border.all(
          width: AppSize.s2,
          color: primaryColor.withOpacity(AppSize.s0_2),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(defaultPadding),),
      ),
      child: Row(
        children: [
          SizedBox(
            height: AppSize.s20,
            width: AppSize.s20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: AppCount.c1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text('$numOfFiles ${AppStrings.files}',
                    style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles),
        ],
      ),
    );
  }
}