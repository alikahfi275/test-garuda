import 'package:get/get.dart';

import 'package:test_garuda/modules/home/screens/home_screen.dart';
import 'package:test_garuda/modules/profile/screens/profile_screen.dart';
import 'package:test_garuda/modules/reservation/screens/reservtion_screen.dart';

class BottomNavController extends GetxController {
  final currentIndex = 0.obs;

  final pages = const [HomeScreen(), ReservtionScreen(), ProfileScreen()];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
