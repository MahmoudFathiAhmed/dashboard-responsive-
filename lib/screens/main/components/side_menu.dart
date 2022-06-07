import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../resources/assets_manager.dart';
import '../../resources/string_manager.dart';
import '../../resources/values_manger.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(ImageAssets.logo),
            ),
            DrawerListTile(
              title: AppStrings.dashboard,
              svgSrc: IconAssets.menuDashboard,
              press: (){},
            ),
            DrawerListTile(
              title: AppStrings.transaction,
              svgSrc: IconAssets.menuTran,
              press: (){},
            ),
            DrawerListTile(
              title: AppStrings.task,
              svgSrc: IconAssets.menuTask,
              press: (){},
            ),
            DrawerListTile(
              title: AppStrings.documents,
              svgSrc: IconAssets.menuDoc,
              press: (){},
            ),
            DrawerListTile(
              title: AppStrings.store,
              svgSrc: IconAssets.menuStore,
              press: (){},
            ),
            DrawerListTile(
              title: AppStrings.notification,
              svgSrc: IconAssets.menuNotification,
              press: (){},
            ),
            DrawerListTile(
              title: AppStrings.profile,
              svgSrc: IconAssets.menuProfile,
              press: (){},
            ),
            DrawerListTile(
              title: AppStrings.settings,
              svgSrc: IconAssets.menuSetting,
              press: (){},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key, required this.title, required this.svgSrc, required this.press,
  }) : super(key: key);
  final String title,svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(svgSrc,
        color: Colors.white54,
        height: AppSize.s16,
      ),
      title:  Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
      horizontalTitleGap: AppSize.s0,
      onTap: press,
    );
  }
}