import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:e_commerce_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login : (context) => const Login()
};