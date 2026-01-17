import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_header.dart';

import 'package:test_garuda/widgets/detail_content.dart';
import 'package:test_garuda/widgets/detail_header_content.dart';
import 'package:test_garuda/widgets/reservation_bottom_sheet.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  void showReservationSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const ReservationBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Get.theme.colorScheme;

    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            top: 0,
            bottom: 275,
            child: Image.asset('assets/images/bg_auth.png', fit: BoxFit.fill),
          ),
          Positioned.fill(
            top: 0,
            bottom: 600,
            child: AppHeader(type: AppHeaderType.simple, title: 'Class Detail'),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 280,
            child: HeaderDetailContent(cs: cs),
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: DetailContent()),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: AppButton(
            text: "Reserve",
            onPressed: () {
              showReservationSheet(context);
            },
            variant: AppButtonVariant.primary,
          ),
        ),
      ),
    );
  }
}
