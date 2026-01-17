import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReservationBottomSheet extends StatelessWidget {
  const ReservationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Get.theme.colorScheme;

    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          decoration: BoxDecoration(
            color: cs.background.withOpacity(0.85),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // DRAG HANDLE
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),

                // TITLE
                const Text(
                  'Reservation',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),

                const SizedBox(height: 16),

                // CLASS INFO
                _InfoBlock(),

                const SizedBox(height: 24),

                // CONFIRM BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      // confirm reservation
                      Get.back();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: cs.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Confirmation Reservation',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                // CANCEL BUTTON
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: Get.back,
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Cancel', style: TextStyle(fontSize: 16)),
                  ),
                ),

                const SizedBox(height: 16),

                // FOOTER NOTE
                const Text(
                  'Some classes may have specific membership requirements. '
                  'Please check the class description for details.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white70,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Body Combat',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 6),
        Text('Monday, 2 September 2024'),
        Text('08.00 - 09.30'),
        SizedBox(height: 10),
        Text('BXC Mall'),
        SizedBox(height: 6),
        Row(
          children: [
            Icon(Icons.person, size: 14),
            SizedBox(width: 6),
            Text('Arif'),
          ],
        ),
      ],
    );
  }
}
