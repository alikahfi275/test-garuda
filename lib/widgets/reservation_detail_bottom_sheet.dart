import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_text.dart';

class ReservationDetailBottomSheet extends StatelessWidget {
  const ReservationDetailBottomSheet({super.key});

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
            color: Color.fromARGB(48, 255, 255, 255),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            border: Border.all(color: const Color.fromARGB(136, 255, 255, 255)),
          ),
          child: SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 4,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                AppText(
                  'Reservation Success',
                  size: 20,
                  weight: FontWeight.w700,
                  align: TextAlign.center,
                ),
                const SizedBox(height: 16),
                AppText(
                  'Some classes may have specific membership requirements. Please check the class description for details.',
                  size: 12,
                  align: TextAlign.center,
                  color: cs.onPrimary,
                ),
                const SizedBox(height: 16),
                _InfoBlock(),
                const SizedBox(height: 24),

                AppButton(
                  text: "Got To Reservation",
                  onPressed: () => Get.toNamed(Routes.buttomNav),
                  variant: AppButtonVariant.secondary,
                ),
                const SizedBox(height: 16),
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
