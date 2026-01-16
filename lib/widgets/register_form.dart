import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/modules/authentication/controllers/register_controller.dart';
import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_input.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({super.key});

  final controller = Get.find<RegisterController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppInput(
          label: 'Username',
          hint: 'username',
          keyboardType: TextInputType.name,
          controller: controller.usernameController,
          errorText: controller.usernameError,
        ),
        const SizedBox(height: 10),

        AppInput(
          label: 'Email',
          hint: 'name@example.com',
          keyboardType: TextInputType.emailAddress,
          controller: controller.emailController,
          errorText: controller.emailError,
        ),
        const SizedBox(height: 10),

        AppInput(
          label: 'Password',
          hint: 'password',
          obscureText: true,
          controller: controller.passwordController,
          errorText: controller.passwordError,
        ),
        const SizedBox(height: 10),

        AppInput(
          label: 'Confirm Password',
          hint: 'confirm password',
          obscureText: true,
          controller: controller.confirmPasswordController,
          errorText: controller.confirmPasswordError,
        ),
        const SizedBox(height: 30),

        Obx(
          () => AppButton(
            text: controller.isLoading.value ? 'Loading...' : 'Create Account',
            onPressed: controller.register,
            variant: AppButtonVariant.primary,
          ),
        ),
      ],
    );
  }
}
