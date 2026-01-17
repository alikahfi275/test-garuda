import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/app_text.dart';

class AppSectionHeader extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback? onActionTap;

  const AppSectionHeader({
    super.key,
    required this.title,
    this.actionText = 'See More',
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(
          title,
          size: 22,
          weight: FontWeight.w700,
          fontStyle: FontStyle.italic,
        ),

        if (onActionTap != null)
          InkWell(
            onTap: onActionTap,
            borderRadius: BorderRadius.circular(8),
            child: Row(
              children: [
                AppText(actionText, size: 12, weight: FontWeight.w400),
                const SizedBox(width: 4),
                Icon(Icons.chevron_right, size: 18),
              ],
            ),
          ),
      ],
    );
  }
}
