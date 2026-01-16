import 'package:get/get.dart';

import '../../core/controller/bottom_nav_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController(), fenix: true);
  }
}
