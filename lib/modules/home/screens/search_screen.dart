import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:test_garuda/modules/home/controllers/search_controller.dart';
import 'package:test_garuda/widgets/app_header.dart';
import 'package:test_garuda/widgets/list_search.dart';
import 'package:test_garuda/widgets/search_form.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final controller = Get.find<SearchHomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AppHeader(type: AppHeaderType.simple, title: 'Search'),
              SearchForm(),
              const SizedBox(height: 25),
              ListSearch(controller: controller),
            ],
          ),
        ),
      ),
    );
  }
}
