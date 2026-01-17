import 'package:flutter/material.dart';

import 'package:test_garuda/widgets/search_filter_field.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchFilterField(
          icon: Icons.location_on,
          label: 'Location',
          onTap: () {},
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: SearchFilterField(
                icon: Icons.calendar_month,
                label: 'Date',
                onTap: () {},
              ),
            ),

            const SizedBox(width: 16),
            Expanded(
              child: SearchFilterField(
                icon: Icons.headset_mic,
                label: 'Instructor',
                onTap: () {},
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        SearchFilterField(
          icon: Icons.directions_run,
          label: 'Activity Class',
          onTap: () {},
        ),
      ],
    );
  }
}
