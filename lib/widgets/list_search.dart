import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/modules/home/controllers/search_controller.dart';
import 'package:test_garuda/widgets/app_text.dart';
import 'package:test_garuda/widgets/card_reservation.dart';

class ListSearch extends StatelessWidget {
  const ListSearch({super.key, required this.controller});

  final SearchHomeController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: controller.groupedReservations.entries.map((entry) {
          final dateLabel = entry.key;
          final items = entry.value;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                dateLabel,
                size: 18,
                weight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
              const SizedBox(height: 12),
              ...items.map(
                (item) => CardReservation(data: item, onAction: () {}),
              ),
              const SizedBox(height: 24),
            ],
          );
        }).toList(),
      ),
    );
  }
}
