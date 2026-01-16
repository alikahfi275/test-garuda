import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailError = RxnString();
  final passwordError = RxnString();

  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    emailController.addListener(_validateEmail);
    passwordController.addListener(_validatePassword);
  }

  void _validateEmail() {
    final email = emailController.text.trim();

    if (email.isEmpty) {
      emailError.value = 'Email is required';
    } else if (!GetUtils.isEmail(email)) {
      emailError.value = 'Invalid email address';
    } else {
      emailError.value = null;
    }
  }

  void _validatePassword() {
    final password = passwordController.text;

    if (password.isEmpty) {
      passwordError.value = 'Password is required';
    } else if (password.length < 6) {
      passwordError.value = 'Password must be at least 6 characters';
    } else {
      passwordError.value = null;
    }
  }

  bool get isFormValid =>
      emailError.value == null &&
      passwordError.value == null &&
      emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty;

  Future<void> login() async {
    _validateEmail();
    _validatePassword();

    if (!isFormValid) return;

    try {
      isLoading.value = true;

      await Future.delayed(const Duration(seconds: 2));

      // contoh sukses:
    } catch (e) {
      Get.snackbar('Error', 'Login failed');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
