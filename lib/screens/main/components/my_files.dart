import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/my_files.dart';
import '../../../responsive.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
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
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * AppSize.s1_5,
                      vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2:1),
                    )
                ),
                icon: const Icon(Icons.add),
                label: const Text(AppStrings.addNew)),
          ],
        ),
        const SizedBox(height: defaultPadding,),
        Responsive(
            mobile: FileInfoCardGridView(
              crossAxisCount: _size.width <650 ? 2 : 4,
              childAspectRatio: _size.width < 650 ? 1.3 : 1,
            ),
            tablet: const FileInfoCardGridView(),
            desktop: FileInfoCardGridView(childAspectRatio: _size.width < 1400? 1.1:1.4,),
        ),
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
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demoMyFiles.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: defaultPadding,
          childAspectRatio: childAspectRatio,
          mainAxisSpacing: defaultPadding,
        ),
        itemBuilder: (context, index)=>FileInfoCard(
          info: demoMyFiles[index],
        ),
    );
  }
}