import 'package:dio/dio.dart';
import 'package:test_garuda/core/services/api_service.dart';
import 'package:test_garuda/data/models/login_model.dart';
import '../models/register_model.dart';

class AuthRepository {
  final ApiService _apiService;

  AuthRepository(this._apiService);

  Future<Response> register(RegisterModel request) {
    return _apiService.dio.post('/register', data: request.toJson());
  }

  Future<Response> login(LoginModel model) {
    return _apiService.dio.post('/login', data: model.toJson());
  }
}
