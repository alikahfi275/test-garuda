import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_text.dart';

class AppHeaderForm extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool showBack;
  final VoidCallback? onBack;

  const AppHeaderForm({
    super.key,
    required this.title,
    required this.subtitle,
    this.showBack = true,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showBack)
          IconButton(
            onPressed: onBack ?? () => Get.back(),
            icon: const Icon(Icons.arrow_back),
          ),

        AppText(
          title,
          size: 26,
          weight: FontWeight.w700,
          color: Get.theme.colorScheme.primary,
        ),

        AppText(
          subtitle,
          size: 16,
          weight: FontWeight.w400,
          color: Get.theme.colorScheme.tertiaryFixedDim,
        ),
      ],
    );
  }
}
