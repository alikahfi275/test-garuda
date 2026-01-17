import 'package:flutter/material.dart';

import 'package:test_garuda/data/models/reservation_model.dart';
import 'package:test_garuda/widgets/app_section_header.dart';
import 'package:test_garuda/widgets/card_reservation.dart';

class ListNear extends StatelessWidget {
  const ListNear({super.key, required this.nearClasses});

  final List<ReservationModel> nearClasses;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSectionHeader(title: 'Near You', onActionTap: () {}),
        const SizedBox(height: 10),
        ...nearClasses.map(
          (item) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: CardReservation(
              data: item,
              type: ReservationCardType.reserve,
              onAction: () {},
            ),
          ),
        ),
      ],
    );
  }
}
