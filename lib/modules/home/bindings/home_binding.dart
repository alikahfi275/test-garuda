import 'package:get/get.dart';

import 'package:test_garuda/modules/home/controllers/home_controller.dart';
import 'package:test_garuda/modules/home/controllers/search_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<SearchHomeController>(
      () => SearchHomeController(),
      fenix: true,
    );
  }
}
