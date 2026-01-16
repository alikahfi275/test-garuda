import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/widgets/app_header_form.dart';
import 'package:test_garuda/widgets/app_text.dart';
import 'package:test_garuda/widgets/forgot_password_form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                title: 'Forgot Password?',
                subtitle:
                    "Don't worry! It occurs. Please enter the email address linked with your account.",
              ),
              const SizedBox(height: 30),
              const ForgotPasswordForm(),
              const Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText(
                    'Remember Password?',
                    size: 14,
                    weight: FontWeight.w400,
                  ),
                  const SizedBox(width: 4),
                  InkWell(
                    onTap: () => Get.toNamed(Routes.login),
                    child: AppText(
                      "Sign in",
                      size: 14,
                      weight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
