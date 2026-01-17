import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/app_text.dart';

class ItemAvatar extends StatelessWidget {
  final String name;
  final String imageUrl;
  final VoidCallback? onTap;

  const ItemAvatar({
    super.key,
    required this.name,
    required this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 80,
        child: Column(
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            AppText(name, size: 14, weight: FontWeight.w500),
          ],
        ),
      ),
    );
  }
}
