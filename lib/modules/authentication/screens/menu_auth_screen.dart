import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/auth_action_sheet.dart';
import 'package:test_garuda/widgets/auth_hero_pager.dart';

class MenuAuthScreen extends StatelessWidget {
  const MenuAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            top: 0,
            bottom: 250,
            child: Image.asset('assets/images/bg_auth.png', fit: BoxFit.fill),
          ),
          Positioned(
            left: 24,
            right: 24,
            bottom: 250 + 32,
            child: const AuthHeroPager(),
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: AuthActionSheet()),
        ],
      ),
    );
  }
}
