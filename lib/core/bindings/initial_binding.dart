import 'package:get/get.dart';

import 'package:test_garuda/core/services/api_service.dart';
import 'package:test_garuda/data/repositories/auth_repository.dart';
import 'package:test_garuda/core/controller/bottom_nav_controller.dart';
import 'package:test_garuda/modules/home/controllers/home_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController(), fenix: true);
    Get.put<ApiService>(ApiService(), permanent: true);
    Get.put<AuthRepository>(
      AuthRepository(Get.find<ApiService>()),
      permanent: true,
    );
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}
