import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_header.dart';
import 'package:test_garuda/widgets/app_input.dart';
import 'package:test_garuda/widgets/app_text.dart';
import '../controllers/profile_edit_controller.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Get.theme.colorScheme;
    final controller = Get.find<ProfileEditController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeader(type: AppHeaderType.simple, title: 'Profile'),
              const SizedBox(height: 32),
              AppInput(
                label: 'Username',
                hint: 'username',
                controller: controller.usernameController,
              ),
              const SizedBox(height: 16),
              AppInput(
                label: 'Email',
                hint: 'email',
                keyboardType: TextInputType.emailAddress,
                controller: controller.emailController,
              ),
              const SizedBox(height: 16),
              AppInput(
                label: 'Password',
                hint: 'password',
                obscureText: true,
                controller: controller.passwordController,
              ),
              const SizedBox(height: 32),
              Obx(
                () => AppButton(
                  text: controller.isLoading.value ? 'Saving...' : 'Save',
                  onPressed: controller.saveProfile,
                  variant: AppButtonVariant.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
