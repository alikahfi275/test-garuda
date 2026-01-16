import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:test_garuda/core/bindings/initial_binding.dart';
import 'package:test_garuda/core/routes/app_bottom_nav.dart';
import 'package:test_garuda/core/routes/app_pages.dart';
import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/core/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.menuAuth,
      getPages: AppPages.routes,
      initialBinding: InitialBinding(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const BottomNavScreen(),
    );
  }
}
