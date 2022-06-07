import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';

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
        GridView.builder(
            shrinkWrap: true,
            itemCount: AppCount.c4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: AppCount.c4,
              crossAxisSpacing: defaultPadding,
            ),
            itemBuilder: (context, index)=>Container(
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(AppSize.s10),
                ),
              ),
            )),
      ],
    );
  }
}