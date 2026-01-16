import 'package:get/get.dart';
import 'package:test_garuda/core/services/api_service.dart';
import 'package:test_garuda/data/repositories/auth_repository.dart';

import '../../core/controller/bottom_nav_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController(), fenix: true);
    Get.put<ApiService>(ApiService(), permanent: true);
    Get.put<AuthRepository>(
      AuthRepository(Get.find<ApiService>()),
      permanent: true,
    );
  }
}
