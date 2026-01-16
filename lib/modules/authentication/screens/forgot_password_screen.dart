import 'package:flutter/material.dart';
import 'package:test_garuda/widgets/app_header_form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                title: 'Welcome Back',
                subtitle: "Sign in to start booking a class",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
