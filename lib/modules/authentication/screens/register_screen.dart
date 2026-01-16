import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/app_divider.dart';
import 'package:test_garuda/widgets/app_header_form.dart';
import 'package:test_garuda/widgets/app_toast.dart';
import 'package:test_garuda/widgets/auth_google_button.dart';
import 'package:test_garuda/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppHeaderForm(
                    title: 'Welcome to Outkast',
                    subtitle: "Let's create your account",
                  ),
                  const SizedBox(height: 30),
                  RegisterForm(),
                ],
              ),
              const Spacer(),
              const AppDivider(),
              const SizedBox(height: 20),
              AuthGoogleButton(
                onPressed: () => AppToast.error('Fitur belum tersedia'),
                onTapFooterLink: () => AppToast.error('Fitur belum tersedia'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
