import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../core/controller/bottom_nav_controller.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navC = Get.find<BottomNavController>();

    return Obx(() {
      return Scaffold(
        body: navC.pages[navC.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navC.currentIndex.value,
          onTap: navC.changePage,
          type: BottomNavigationBarType.fixed,

          selectedIconTheme: IconThemeData(
            size: 22,
            color: Get.theme.colorScheme.primaryContainer,
          ),
          unselectedIconTheme: IconThemeData(
            size: 20,
            color: Get.theme.colorScheme.surfaceContainerHigh,
          ),

          selectedLabelStyle: TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w400,
            fontFamily: 'Frutiger',
            color: Get.theme.colorScheme.primaryContainer,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w300,
            fontFamily: 'Frutiger',
          ),

          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_sharp),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind),
              label: 'Recruitment',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
