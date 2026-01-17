import 'package:flutter/material.dart';
import 'package:test_garuda/widgets/app_text.dart';

class HeaderDetailContent extends StatelessWidget {
  const HeaderDetailContent({super.key, required this.cs});

  final ColorScheme cs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText('Body Combat', size: 22, weight: FontWeight.w700),
                AppText(
                  'Moday, 2 September 2023',
                  size: 14,
                  weight: FontWeight.w500,
                ),
                AppText('08.00 - 10.00', size: 14, weight: FontWeight.w500),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: const Color.fromARGB(29, 255, 255, 255),
              borderRadius: BorderRadius.circular(8),
            ),
            child: AppText(
              "3 slots available",
              size: 14,
              weight: FontWeight.w500,
              color: cs.surface,
            ),
          ),
        ],
      ),
    );
  }
}
