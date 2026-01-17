import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/item_avatar.dart';
import 'package:test_garuda/widgets/app_section_header.dart';
import 'package:test_garuda/data/models/instructor_model.dart';

class ListInstructor extends StatelessWidget {
  final List<InstructorModel> instructors;

  const ListInstructor({super.key, required this.instructors});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        AppSectionHeader(title: 'Rising Instructors', onActionTap: () {}),
        const SizedBox(height: 10),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: instructors.length,
            itemBuilder: (context, index) {
              final item = instructors[index];
              return ItemAvatar(name: item.name, imageUrl: item.imageUrl);
            },
          ),
        ),
      ],
    );
  }
}
