import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/data/models/reservation_model.dart';
import 'package:test_garuda/widgets/app_text.dart';

enum ReservationCardType { reserve, cancel }

class CardReservation extends StatelessWidget {
  final ReservationModel data;
  final VoidCallback onAction;
  final ReservationCardType type;

  const CardReservation({
    super.key,
    required this.data,
    required this.onAction,
    this.type = ReservationCardType.reserve,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Get.theme.colorScheme;

    final isReserve = type == ReservationCardType.reserve;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(27, 255, 255, 255),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // ================= LEFT =================
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(data.time, size: 14, weight: FontWeight.w500),
                AppText(data.title, size: 18, weight: FontWeight.w600),
                const SizedBox(height: 10),
                AppText(data.location, size: 14, weight: FontWeight.w500),
                Row(
                  children: [
                    const Icon(Icons.person, size: 14),
                    const SizedBox(width: 6),
                    AppText(data.instructor, size: 14, weight: FontWeight.w500),
                  ],
                ),
              ],
            ),
          ),

          // ================= RIGHT =================
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(29, 255, 255, 255),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AppText(
                  data.slotText,
                  size: 14,
                  weight: FontWeight.w500,
                  color: data.isAvailable
                      ? colorScheme.surface
                      : colorScheme.onPrimary,
                ),
              ),
              const SizedBox(height: 12),

              // ACTION BUTTON
              ElevatedButton(
                onPressed: onAction,
                style: ElevatedButton.styleFrom(
                  backgroundColor: isReserve
                      ? colorScheme.primary
                      : colorScheme.onPrimary,
                  foregroundColor: isReserve
                      ? colorScheme.onPrimary
                      : colorScheme.tertiaryContainer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(isReserve ? 'Reserve' : 'Cancel'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
