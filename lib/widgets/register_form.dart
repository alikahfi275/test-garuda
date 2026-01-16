import 'package:flutter/material.dart';
import 'package:test_garuda/widgets/app_button.dart';
import 'package:test_garuda/widgets/app_input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppInput(
          label: 'Username',
          hint: 'username',
          // controller: authC.emailController,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 10),
        AppInput(
          label: 'Email',
          hint: 'name@example.com',
          // controller: authC.emailController,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 10),
        AppInput(
          label: 'Password',
          hint: 'password',
          // controller: authC.emailController,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 10),
        AppInput(
          label: 'Confirm Password',
          hint: 'confirm password',
          // controller: authC.emailController,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 30),
        AppButton(
          text: 'Create Account',
          onPressed: () {},
          variant: AppButtonVariant.primary,
        ),
      ],
    );
  }
}
