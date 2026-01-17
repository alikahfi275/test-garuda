import 'package:flutter/material.dart';
import 'package:test_garuda/data/models/reservation_model.dart';
import 'package:test_garuda/widgets/card_reservation.dart';

class ReservationList extends StatelessWidget {
  final List<ReservationModel> items;
  final void Function(ReservationModel) onAction;

  const ReservationList({
    super.key,
    required this.items,
    required this.onAction,
  });

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(
        child: Text('No reservations', style: TextStyle(color: Colors.white54)),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: items.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final item = items[index];

        return CardReservation(
          data: item,
          onAction: () => onAction(item),
          type: ReservationCardType.cancel,
        );
      },
    );
  }
}
