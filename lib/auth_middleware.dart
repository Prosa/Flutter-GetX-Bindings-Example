
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_get_app/user_controller.dart';

class AuthMiddleware extends GetMiddleware {
  final authService = UserController.find; // Here is error, this line can't find UserController
  @override
  int? get priority => 1;
  bool isAuthenticated = false;

  @override
  RouteSettings? redirect(String? route) {
    isAuthenticated = true;
    if (isAuthenticated == false) {
      return const RouteSettings(name: '/login');
    }
    return null;
  }
}