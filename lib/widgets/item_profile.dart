import 'package:flutter/material.dart';
import 'app_text.dart';

class ItemProfile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ItemProfile({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(31, 255, 255, 255),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Expanded(child: AppText(title, size: 16, weight: FontWeight.w500)),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
