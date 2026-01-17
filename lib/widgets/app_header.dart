import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/widgets/app_text.dart';

enum AppHeaderType { home, simple }

class AppHeader extends StatelessWidget {
  final AppHeaderType type;

  final String? title;

  final String? location;
  final VoidCallback? onLocationTap;
  final VoidCallback? onSearchTap;
  final VoidCallback? onNotificationTap;

  final VoidCallback? onBack;

  const AppHeader({
    super.key,
    required this.type,
    this.title,
    this.location,
    this.onLocationTap,
    this.onSearchTap,
    this.onNotificationTap,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Get.theme.colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SafeArea(
        bottom: false,
        child: type == AppHeaderType.home
            ? _homeHeader(colorScheme)
            : _simpleHeader(colorScheme),
      ),
    );
  }

  Widget _homeHeader(ColorScheme colorScheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText('Location', size: 12, weight: FontWeight.w400),
            const SizedBox(height: 4),
            InkWell(
              onTap: onLocationTap,
              child: Row(
                children: [
                  AppText(location ?? '', size: 16, weight: FontWeight.w600),
                  const SizedBox(width: 4),
                  Icon(Icons.keyboard_arrow_down, color: colorScheme.onPrimary),
                ],
              ),
            ),
          ],
        ),

        // Actions
        Row(
          children: [
            IconButton(
              onPressed: onSearchTap,
              icon: Icon(Icons.search, color: colorScheme.onPrimary),
            ),
            IconButton(
              onPressed: onNotificationTap,
              icon: Icon(
                Icons.notifications_none,
                color: colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _simpleHeader(ColorScheme colorScheme) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: onBack ?? Get.back,
            icon: Icon(Icons.arrow_back, color: colorScheme.onPrimary),
          ),
        ),
        AppText(
          title ?? '',
          size: 22,
          weight: FontWeight.w700,
          fontStyle: FontStyle.italic,
        ),
      ],
    );
  }
}
