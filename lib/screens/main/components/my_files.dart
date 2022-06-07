import 'package:dashboard/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/my_files.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppStrings.myFiles,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(onPressed: (){},
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * AppSize.s1_5,
                      vertical: defaultPadding,
                    )
                ),
                icon: const Icon(Icons.add),
                label: const Text(AppStrings.addNew)),
          ],
        ),
        const SizedBox(height: defaultPadding,),
        const Responsive(
            mobile: FileInfoCardGridView(),
            tablet: FileInfoCardGridView(),
            desktop: FileInfoCardGridView()),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key, this.crossAxisCount= AppCount.c4, this.childAspectRatio= AppSize.s1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: demoMyFiles.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio,
        ),
        itemBuilder: (context, index)=>FileInfoCard(
          info: demoMyFiles[index],
        ),
    );
  }
}