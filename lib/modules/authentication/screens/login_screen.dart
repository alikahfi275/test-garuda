import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';

import 'package:test_garuda/widgets/app_divider.dart';
import 'package:test_garuda/widgets/app_header_form.dart';
import 'package:test_garuda/widgets/app_toast.dart';
import 'package:test_garuda/widgets/auth_google_button.dart';
import 'package:test_garuda/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeaderForm(
                title: 'Welcome Back',
                subtitle: "Sign in to start booking a class",
                onBack: () => Get.toNamed(Routes.menuAuth),
              ),
              const SizedBox(height: 30),
              const LoginForm(),
              const Spacer(),
              const AppDivider(),
              const SizedBox(height: 20),
              AuthGoogleButton(
                onPressed: () => AppToast.error('Fitur belum tersedia'),
                onTapFooterLink: () => AppToast.error('Fitur belum tersedia'),
                text: "Sign in with Google",
                textFooter: "Don't have an account",
                textFooterLink: "Create Account Now",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
