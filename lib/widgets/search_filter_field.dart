import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/app_text.dart';

class SearchFilterField extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool expanded;

  const SearchFilterField({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.expanded = true,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Get.theme.colorScheme;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Color.fromARGB(35, 255, 255, 255),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: const Color.fromARGB(103, 255, 255, 255)),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            AppText(
              label,
              size: 16,
              weight: FontWeight.w400,
              color: cs.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
