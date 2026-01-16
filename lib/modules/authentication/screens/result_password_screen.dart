import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_text.dart';

class ResultPasswordScreen extends StatelessWidget {
  const ResultPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Get.theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  size: 48,
                  color: colorScheme.onPrimary,
                ),
              ),
              const SizedBox(height: 32),
              AppText(
                'Password Changed!',
                size: 26,
                weight: FontWeight.w700,
                color: colorScheme.primary,
                align: TextAlign.center,
              ),
              const SizedBox(height: 12),
              AppText(
                'Your password has been changed\nsuccessfully.',
                size: 16,
                align: TextAlign.center,
                color: colorScheme.tertiaryFixedDim,
                height: 1.5,
              ),
              const SizedBox(height: 48),
              AppButton(
                text: 'Back to Sign in',
                variant: AppButtonVariant.primary,
                onPressed: () => Get.toNamed(Routes.login),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
