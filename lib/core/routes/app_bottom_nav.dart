import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/core/controller/bottom_nav_controller.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navC = Get.find<BottomNavController>();

    return Obx(() {
      return Scaffold(
        body: navC.pages[navC.currentIndex.value],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Get.theme.colorScheme.tertiary, width: 1),
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: navC.currentIndex.value,
            onTap: navC.changePage,
            type: BottomNavigationBarType.fixed,

            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.edit_calendar_rounded),
                label: 'Reservation',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
    });
  }
}
