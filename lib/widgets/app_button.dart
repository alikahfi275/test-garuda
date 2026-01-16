import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_text.dart';

enum AppButtonVariant { primary, secondary, tertiary }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final AppButtonVariant variant;
  final double height;
  final double radius;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.variant,
    this.height = 48,
    this.radius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: _backgroundColor(),
          foregroundColor: _textColor(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: AppText(
          text,
          size: 16,
          weight: FontWeight.w600,
          color: _textColor(),
        ),
      ),
    );
  }

  Color _backgroundColor() {
    switch (variant) {
      case AppButtonVariant.primary:
        return Get.theme.colorScheme.primary;
      case AppButtonVariant.secondary:
        return Get.theme.colorScheme.onPrimary;
      case AppButtonVariant.tertiary:
        return Get.theme.colorScheme.secondary;
    }
  }

  Color _textColor() {
    switch (variant) {
      case AppButtonVariant.primary:
        return Get.theme.colorScheme.onPrimary;
      case AppButtonVariant.secondary:
        return Get.theme.colorScheme.tertiaryContainer;
      case AppButtonVariant.tertiary:
        return Get.theme.colorScheme.onPrimary;
    }
  }
}
