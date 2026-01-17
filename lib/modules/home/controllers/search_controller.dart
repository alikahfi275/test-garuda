import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_garuda/data/models/reservation_model.dart';

class SearchHomeController extends GetxController {
  final reservations = <ReservationModel>[].obs;

  final groupedReservations = <String, List<ReservationModel>>{}.obs;

  @override
  void onInit() {
    super.onInit();
    loadSearchResult();
  }

  void loadSearchResult() {
    final data = [
      ReservationModel(
        dateReservation: DateTime(2024, 9, 2),
        time: '08.00 - 09.30',
        title: 'Body Combat',
        location: 'BXC Mall',
        instructor: 'Arif',
        slotText: '3 Slots left!',
        isAvailable: true,
      ),
      ReservationModel(
        dateReservation: DateTime(2024, 9, 3),
        time: '08.00 - 09.30',
        title: 'Body Combat',
        location: 'BXC Mall',
        instructor: 'Alexa',
        slotText: '1 Slots left!',
        isAvailable: true,
      ),
      ReservationModel(
        dateReservation: DateTime(2024, 9, 6),
        time: '08.00 - 09.30',
        title: 'Body Combat',
        location: 'BXC Mall',
        instructor: 'Arif',
        slotText: 'Slots Available',
        isAvailable: false,
      ),
    ];

    reservations.assignAll(data);
    _groupByDate();
  }

  void _groupByDate() {
    final Map<String, List<ReservationModel>> grouped = {};

    for (final item in reservations) {
      final key = DateFormat('EEEE, d MMMM yyyy').format(item.dateReservation!);

      grouped.putIfAbsent(key, () => []);
      grouped[key]!.add(item);
    }

    groupedReservations.assignAll(grouped);
  }
}
