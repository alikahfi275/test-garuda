import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_input.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({super.key});

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
        const SizedBox(height: 30),
        AppButton(
          text: "Request Reset Password",
          onPressed: () => Get.toNamed(Routes.newPassword),
          variant: AppButtonVariant.primary,
        ),
      ],
    );
  }
}
