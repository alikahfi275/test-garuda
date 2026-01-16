import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/widgets/app_text.dart';

class AuthGoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final EdgeInsetsGeometry? padding;
  final String textFooter;
  final String textFooterLink;
  final VoidCallback? onTapFooterLink;

  const AuthGoogleButton({
    super.key,
    required this.onPressed,
    this.text = "Create Account with Google",
    this.padding,
    this.textFooter = "Already have an account?",
    this.textFooterLink = "Sign In Now",
    this.onTapFooterLink,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Get.theme.colorScheme.onPrimary,
            foregroundColor: Get.theme.colorScheme.tertiaryContainer,
            elevation: 0,
            padding: padding ?? const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/google.png", height: 22),
              const SizedBox(width: 12),
              AppText(
                text,
                size: 14,
                weight: FontWeight.w400,
                color: Get.theme.colorScheme.tertiaryContainer,
              ),
            ],
          ),
        ),
        const SizedBox(height: 25),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(textFooter, size: 14, weight: FontWeight.w400),
            const SizedBox(width: 4),
            InkWell(
              onTap: onTapFooterLink,
              child: AppText(textFooterLink, size: 14, weight: FontWeight.w600),
            ),
          ],
        ),

        const SizedBox(height: 30),
      ],
    );
  }
}
