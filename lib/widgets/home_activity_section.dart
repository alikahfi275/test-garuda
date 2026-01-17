import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/activity_card.dart';
import 'package:test_garuda/widgets/app_section_header.dart';

class ActivitySection extends StatelessWidget {
  const ActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeader(title: 'Choose Activity'),
        const SizedBox(height: 10),
        Row(
          children: [
            ActivityCard(
              icon: Icons.fitness_center,
              title: 'Body Gain',
              onTap: () {
                Get.snackbar('Activity', 'Body Gain selected');
              },
            ),
            const SizedBox(width: 16),
            ActivityCard(
              icon: Icons.self_improvement,
              title: 'Yoga',
              onTap: () {
                Get.snackbar('Activity', 'Yoga selected');
              },
            ),
          ],
        ),
      ],
    );
  }
}
