import 'package:get/get.dart';

import 'package:test_garuda/modules/authentication/controllers/login_controller.dart';
import 'package:test_garuda/modules/authentication/controllers/register_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(Get.find()),
      fenix: true,
    );
    Get.lazyPut<RegisterController>(
      () => RegisterController(Get.find()),
      fenix: true,
    );
  }
}
