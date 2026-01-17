import 'package:get/get.dart';

import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/core/routes/app_bottom_nav.dart';
import 'package:test_garuda/modules/authentication/bindings/auth_binding.dart';
import 'package:test_garuda/modules/authentication/screens/result_password_screen.dart';
import 'package:test_garuda/modules/authentication/screens/forgot_password_screen.dart';
import 'package:test_garuda/modules/authentication/screens/new_password_screen.dart';
import 'package:test_garuda/modules/authentication/screens/menu_auth_screen.dart';
import 'package:test_garuda/modules/authentication/screens/register_screen.dart';
import 'package:test_garuda/modules/authentication/screens/login_screen.dart';
import 'package:test_garuda/modules/home/bindings/home_binding.dart';
import 'package:test_garuda/modules/home/screens/detail_screen.dart';
import 'package:test_garuda/modules/home/screens/search_screen.dart';
import 'package:test_garuda/modules/profile/bindings/profile_binding.dart';
import 'package:test_garuda/modules/profile/screens/profile_edit_screen.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.menuAuth, page: () => const MenuAuthScreen()),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterScreen(),
      binding: AuthBinding(),
    ),
    GetPage(name: Routes.buttomNav, page: () => const BottomNavScreen()),
    GetPage(
      name: Routes.forgetPassword,
      page: () => const ForgotPasswordScreen(),
    ),
    GetPage(name: Routes.newPassword, page: () => const NewPasswordScreen()),
    GetPage(
      name: Routes.resultPassword,
      page: () => const ResultPasswordScreen(),
    ),
    GetPage(
      name: Routes.search,
      page: () => SearchScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.detail,
      page: () => DetailScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.profileEdit,
      page: () => const ProfileEditScreen(),
      binding: ProfileBinding(),
    ),
  ];
}
