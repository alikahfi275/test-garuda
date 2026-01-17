import 'package:flutter/material.dart';
import 'package:test_garuda/widgets/app_text.dart';

class DetailContent extends StatelessWidget {
  const DetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(63, 255, 255, 255)),
            color: const Color.fromARGB(63, 255, 255, 255),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  AppText('Instructor', size: 14, weight: FontWeight.w500),
                  Row(
                    children: [
                      const Icon(Icons.person, size: 14),
                      const SizedBox(width: 6),
                      AppText("Arif", size: 16, weight: FontWeight.w600),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  AppText('Instructor', size: 14, weight: FontWeight.w500),
                  AppText('John Doe', size: 16, weight: FontWeight.w600),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                'Information',
                weight: FontWeight.w700,
                size: 18,
                fontStyle: FontStyle.italic,
              ),
              AppText(
                'BodyCombat is a high-energy, empowering cardio workout inspired by martial arts. This fiercely effective program draws from a variety of disciplines like karate, boxing, taekwondo, muay thai, and capoeira, challenging you to punch, kick, and strike your way to fitness with powerful, athletic movements.',
                size: 14,
                weight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
