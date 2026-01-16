import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: Get.theme.colorScheme.onTertiary, thickness: 1),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "or",
            style: TextStyle(color: Get.theme.colorScheme.onTertiary),
          ),
        ),
        Expanded(
          child: Divider(color: Get.theme.colorScheme.onTertiary, thickness: 1),
        ),
      ],
    );
  }
}
