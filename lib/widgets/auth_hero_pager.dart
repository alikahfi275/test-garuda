import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/widgets/app_text.dart';

class AuthHeroPager extends StatefulWidget {
  const AuthHeroPager({super.key});

  @override
  State<AuthHeroPager> createState() => _AuthHeroPagerState();
}

class _AuthHeroPagerState extends State<AuthHeroPager> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'title': 'Outkast',
      'subtitle':
          'Unleash your inner potential.\nTrain with purpose. Move with freedom.',
    },
    {
      'title': 'Train Smart',
      'subtitle': 'Personalized workouts designed\nfor your body and goals.',
    },
    {
      'title': 'Stay Strong',
      'subtitle': 'Build strength, endurance,\nand confidence.',
    },
    {
      'title': 'Unleash Your Potential',
      'subtitle': 'Train with purpose. Move with freedom.',
    },
    {
      'title': 'Train Smart',
      'subtitle': 'Personalized workouts designed\nfor your body and goals.',
    },
    {
      'title': 'Stay Strong',
      'subtitle': 'Build strength, endurance,\nand confidence.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 140,
          child: PageView.builder(
            controller: _controller,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            itemBuilder: (context, index) {
              final item = onboardingData[index];
              return Column(
                children: [
                  AppText(
                    item['title']!,
                    size: 30,
                    weight: FontWeight.w700,
                    color: Get.theme.colorScheme.primary,
                  ),
                  const SizedBox(height: 10),
                  AppText(
                    item['subtitle']!,
                    align: TextAlign.center,
                    height: 1.5,
                    color: Get.theme.colorScheme.onPrimary,
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            onboardingData.length,
            (index) => _dot(index == _currentIndex),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }

  Widget _dot(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        color: isActive
            ? Get.theme.colorScheme.primary
            : Get.theme.colorScheme.onTertiaryFixed,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
