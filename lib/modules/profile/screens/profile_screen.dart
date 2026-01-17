import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/widgets/app_header.dart';
import 'package:test_garuda/widgets/app_text.dart';
import 'package:test_garuda/widgets/item_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Get.theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeader(type: AppHeaderType.simple, title: 'Profile'),

              const SizedBox(height: 24),

              ItemProfile(
                title: 'Profile Setting',
                onTap: () {
                  Get.toNamed(Routes.profileEdit);
                },
              ),
              const SizedBox(height: 12),

              ItemProfile(title: 'Location', onTap: () {}),
              const SizedBox(height: 12),

              ItemProfile(title: 'Notification', onTap: () {}),
              const SizedBox(height: 12),

              ItemProfile(title: 'Privacy Policy', onTap: () {}),
              const SizedBox(height: 12),

              ItemProfile(title: 'About', onTap: () {}),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(31, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  onPressed: () {
                    Get.offNamed(Routes.menuAuth);
                  },
                  child: AppText(
                    'Log Out',
                    color: cs.primary,
                    size: 16,
                    weight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
