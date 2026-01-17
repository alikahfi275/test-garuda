import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/widgets/app_toast.dart';

class ProfileEditController extends GetxController {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    // dummy initial value (biasanya dari API / storage)
    usernameController.text = 'stuvylearner';
    emailController.text = 'stuvylearn@example.com';
    passwordController.text = '********';
  }

  Future<void> saveProfile() async {
    if (isLoading.value) return;

    try {
      isLoading.value = true;

      await Future.delayed(const Duration(seconds: 1));

      AppToast.success('Profile updated successfully');
      Get.back();
    } catch (e) {
      AppToast.error('Failed to update profile');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
