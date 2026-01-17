import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/data/models/reservation_model.dart';
import 'package:test_garuda/widgets/app_header.dart';
import 'package:test_garuda/widgets/reservation_list.dart';

class ReservationScreen extends StatelessWidget {
  ReservationScreen({super.key});

  final upcomingList = [
    ReservationModel(
      time: '08.00 - 09.30',
      title: 'Body Combat',
      location: 'BXC Mall',
      instructor: 'Arif',
      slotText: 'Booked!',
      isAvailable: true,
    ),
    ReservationModel(
      time: '10.00 - 11.30',
      title: 'Yoga',
      location: 'BXC Mall',
      instructor: 'Alexa',
      slotText: 'Booked!',
      isAvailable: true,
    ),
  ];

  final completedList = <ReservationModel>[];

  final cancelledList = <ReservationModel>[];

  @override
  Widget build(BuildContext context) {
    final cs = Get.theme.colorScheme;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              AppHeader(type: AppHeaderType.simple, title: 'Reservations'),
              TabBar(
                indicatorColor: cs.primary,
                indicatorWeight: 2,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white54,
                tabs: const [
                  Tab(text: 'Upcoming'),
                  Tab(text: 'Completed'),
                  Tab(text: 'Cancelled'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ReservationList(items: upcomingList, onAction: (item) {}),
                    ReservationList(items: completedList, onAction: (item) {}),
                    ReservationList(items: cancelledList, onAction: (item) {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
