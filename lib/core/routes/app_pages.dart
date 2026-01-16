import 'package:get/get.dart';

import '../../core/routes/app_routes.dart';

import 'package:test_garuda/modules/authentication/screens/menu_auth_screen.dart';
import 'package:test_garuda/modules/authentication/screens/register_screen.dart';
import 'package:test_garuda/modules/authentication/screens/login_screen.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.menuAuth, page: () => const MenuAuthScreen()),
    GetPage(name: Routes.login, page: () => const LoginScreen()),
    GetPage(name: Routes.register, page: () => const RegisterScreen()),
  ];
}
