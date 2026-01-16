import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_header_form.dart';
import 'package:test_garuda/widgets/app_input.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
                title: 'Create New Password',
                subtitle:
                    "Your new password must be unique from those previously used.",
              ),
              const SizedBox(height: 30),
              AppInput(
                label: 'Password',
                hint: 'password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(height: 10),
              AppInput(
                label: 'Confirm Password',
                hint: 'confirm password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
              const SizedBox(height: 30),
              AppButton(
                text: "Reset Password",
                onPressed: () => Get.toNamed(Routes.resultPassword),
                variant: AppButtonVariant.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
