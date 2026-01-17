import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/app_text.dart';

class ActivityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ActivityCard({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Get.theme.colorScheme;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 160,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(0, 242, 86, 38),
                Color.fromARGB(171, 242, 86, 38),
              ],
            ),
            border: Border.all(
              color: const Color.fromARGB(43, 255, 255, 255),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 35, color: colorScheme.onPrimary),
              const Spacer(),
              AppText(title, size: 22, weight: FontWeight.w600),
            ],
          ),
        ),
      ),
    );
  }
}
