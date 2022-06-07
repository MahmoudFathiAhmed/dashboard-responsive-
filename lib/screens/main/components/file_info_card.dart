import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/my_files.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key, required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * AppSize.s0_75),
                height: AppSize.s40,
                width: AppSize.s40,
                decoration: BoxDecoration(
                  color: info.color?.withOpacity(AppSize.s0_1),
                  borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10),
                  ),
                ),
                child: SvgPicture.asset(info.svgSrc!,color: info.color,),
              ),
              const Icon(Icons.more_vert, color: Colors.white54,),
            ],
          ),
          Text(info.title!, maxLines: AppCount.c1, overflow: TextOverflow.ellipsis,),
          ProgressLine(
            color: info.color!,
            percentage: info.percentage!,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(info.totalStorage!,
                style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white70),),
              Text("${info.numOfFiles} ${AppStrings.files}",
                style: Theme.of(context).textTheme.caption?.copyWith(color: Colors.white),),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key, this.color = primaryColor, required this.percentage,
  }) : super(key: key);

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: AppSize.s5,
          decoration: BoxDecoration(
            color: color.withOpacity(AppSize.s0_1),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10),),
          ),
        ),
        LayoutBuilder(builder: (context, constraints)=>Container(
          width: constraints.maxWidth* (percentage/AppCount.c100),
          height: AppSize.s5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s10),),
          ),
        )),
      ],
    );
  }
}