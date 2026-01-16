import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';

import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_text.dart';

class AuthActionSheet extends StatelessWidget {
  const AuthActionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Get.theme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 60),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppButton(
              text: 'Sign in',
              variant: AppButtonVariant.primary,
              onPressed: () => Get.toNamed(Routes.login),
            ),
            const SizedBox(height: 10),
            AppButton(
              text: 'Create Account',
              variant: AppButtonVariant.secondary,
              onPressed: () => Get.toNamed(Routes.register),
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: () => Get.toNamed(Routes.buttomNav),
              child: AppText('Continue as a guest', weight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
