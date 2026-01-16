import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';

import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_input.dart';
import 'package:test_garuda/widgets/app_text.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppInput(
          label: 'Email',
          hint: 'name@example.com',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 10),
        AppInput(
          label: 'Password',
          hint: 'password',
          keyboardType: TextInputType.visiblePassword,
          obscureText: true,
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () => Get.toNamed(Routes.forgetPassword),
              child: AppText(
                'Forgot Password',
                size: 12,
                weight: FontWeight.w500,
                align: TextAlign.right,
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        AppButton(
          text: 'Sign in',
          onPressed: () {},
          variant: AppButtonVariant.primary,
        ),
      ],
    );
  }
}
