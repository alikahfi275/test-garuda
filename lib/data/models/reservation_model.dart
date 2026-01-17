class ReservationModel {
  final String time;
  final String title;
  final String location;
  final String instructor;
  final String slotText;
  final bool isAvailable;

  ReservationModel({
    required this.time,
    required this.title,
    required this.location,
    required this.instructor,
    required this.slotText,
    required this.isAvailable,
  });
}
