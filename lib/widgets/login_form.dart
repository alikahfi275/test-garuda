import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/modules/authentication/controllers/login_controller.dart';

import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_input.dart';
import 'package:test_garuda/widgets/app_text.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppInput(
          label: 'Username',
          hint: 'username',
          keyboardType: TextInputType.text,
          controller: controller.usernameController,
          errorText: controller.usernameError,
        ),

        const SizedBox(height: 10),

        AppInput(
          label: 'Password',
          hint: 'password',
          obscureText: true,
          controller: controller.passwordController,
          errorText: controller.passwordError,
        ),

        const SizedBox(height: 5),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () => Get.toNamed(Routes.forgetPassword),
              child: const AppText(
                'Forgot Password',
                size: 12,
                weight: FontWeight.w500,
              ),
            ),
          ],
        ),

        const SizedBox(height: 30),

        Obx(
          () => AppButton(
            text: controller.isLoading.value ? 'Loading...' : 'Sign in',
            onPressed: controller.login,
            variant: AppButtonVariant.primary,
          ),
        ),
      ],
    );
  }
}
