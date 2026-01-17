import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/app_header.dart';
import 'package:test_garuda/widgets/list_instructor.dart';
import 'package:test_garuda/widgets/home_activity_section.dart';
import 'package:test_garuda/modules/home/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AppHeader(
              type: AppHeaderType.home,
              location: 'Tangerang',
              onLocationTap: () {},
              onSearchTap: () {},
              onNotificationTap: () {},
            ),
            ActivitySection(),
            Obx(
              () =>
                  ListInstructor(instructors: controller.instructors.toList()),
            ),
          ],
        ),
      ),
    );
  }
}
