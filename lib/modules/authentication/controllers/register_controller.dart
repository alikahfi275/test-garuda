import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/data/models/register_model.dart';
import 'package:test_garuda/data/repositories/auth_repository.dart';
import 'package:test_garuda/widgets/app_toast.dart';

class RegisterController extends GetxController {
  final AuthRepository _repository;

  RegisterController(this._repository);

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final usernameError = RxnString();
  final emailError = RxnString();
  final passwordError = RxnString();
  final confirmPasswordError = RxnString();

  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    confirmPasswordController.addListener(_validateConfirmPassword);
    usernameController.addListener(_validateUsername);
    emailController.addListener(_validateEmail);
    passwordController.addListener(_validatePassword);
    confirmPasswordController.addListener(_validateConfirmPassword);
  }

  void _validateConfirmPassword() {
    final value = confirmPasswordController.text;

    if (value.isEmpty) {
      confirmPasswordError.value = 'Confirm password is required';
    } else if (value != passwordController.text) {
      confirmPasswordError.value = 'Passwords do not match';
    } else {
      confirmPasswordError.value = null;
    }
  }

  void _validateUsername() {
    final value = usernameController.text.trim();

    if (value.isEmpty) {
      usernameError.value = 'Username is required';
    } else if (value.length < 3) {
      usernameError.value = 'Username must be at least 3 characters';
    } else {
      usernameError.value = null;
    }
  }

  void _validateEmail() {
    final value = emailController.text.trim();

    if (value.isEmpty) {
      emailError.value = 'Email is required';
    } else if (!GetUtils.isEmail(value)) {
      emailError.value = 'Invalid email address';
    } else {
      emailError.value = null;
    }
  }

  void _validatePassword() {
    final value = passwordController.text;

    if (value.isEmpty) {
      passwordError.value = 'Password is required';
    } else if (value.length < 8) {
      passwordError.value = 'Password must be at least 8 characters';
    } else {
      passwordError.value = null;
    }
  }

  bool get isFormValid =>
      usernameError.value == null &&
      emailError.value == null &&
      passwordError.value == null &&
      usernameController.text.isNotEmpty &&
      emailController.text.isNotEmpty &&
      passwordController.text.isNotEmpty;

  Future<void> register() async {
    if (isLoading.value) return;

    _validateUsername();
    _validateEmail();
    _validatePassword();

    if (!isFormValid) return;

    try {
      isLoading.value = true;

      final request = RegisterModel(
        username: usernameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text,
      );

      final response = await _repository.register(request);

      if (response.statusCode == 201) {
        AppToast.success('Registration successful');

        Get.toNamed(Routes.login);
      } else {
        AppToast.error('Register failed');
      }
    } catch (e) {
      AppToast.error('Register failed. Please try again.');
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
