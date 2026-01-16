import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_garuda/core/routes/app_routes.dart';
import 'package:test_garuda/data/models/login_model.dart';
import 'package:test_garuda/data/repositories/auth_repository.dart';
import 'package:test_garuda/widgets/app_toast.dart';

class LoginController extends GetxController {
  final AuthRepository _repository;

  LoginController(this._repository);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final usernameError = RxnString();
  final passwordError = RxnString();

  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    usernameController.addListener(_validateUsername);

    passwordController.addListener(_validatePassword);
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
      usernameError.value == null &&
      passwordError.value == null &&
      usernameController.text.isNotEmpty &&
      passwordController.text.isNotEmpty;

  Future<void> login() async {
    _validateUsername();
    _validatePassword();

    if (!isFormValid || isLoading.value) return;

    try {
      isLoading.value = true;

      final request = LoginModel(
        username: usernameController.text.trim(),
        password: passwordController.text,
      );

      final response = await _repository.login(request);

      print("tas tes tas tes${response.statusCode}");

      if (response.statusCode == 200) {
        AppToast.success('Login successful');

        Get.offAllNamed(Routes.buttomNav);
      } else {
        AppToast.error('Invalid email or password');
      }
    } catch (e) {
      if (e is DioException) {
        final statusCode = e.response?.statusCode;

        if (statusCode == 401) {
          AppToast.error('Username atau password salah');
        }
      } else {
        AppToast.error('Unexpected error occurred');
      }
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
