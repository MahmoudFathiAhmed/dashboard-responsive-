import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import '../main/components/header.dart';
import '../main/components/my_files.dart';
import '../main/components/recent_files.dart';
import '../main/components/storage_details.dart';
import '../resources/values_manger.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children:  [
            const Header(),
            const SizedBox(height: defaultPadding,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: AppCount.c5,
                  child: Column(
                    children: [
                      const MyFiles(),
                      const SizedBox(height: defaultPadding,),
                      const RecentFiles(),
                      if(Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding,),
                      if(Responsive.isMobile(context))
                        const StorageDetails(),
                    ],
                  ),
                ),
                if(!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding,),
                if(!Responsive.isMobile(context))
                  const Expanded(
                  flex: AppCount.c2,
                  child: StorageDetails(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


