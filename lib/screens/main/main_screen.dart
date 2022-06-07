import 'package:flutter/material.dart';

import '../dashboard/dashboard_screen.dart';
import '../resources/values_manger.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              //1/6 by default because it takes flex: 1
              child: SideMenu(),
            ),
            Expanded(
              flex: AppCount.c5,//5/6
              child: DashboardScreen()
            ),
          ],
        ),
      ),
    );
  }
}


