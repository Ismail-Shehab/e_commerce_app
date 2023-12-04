import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:e_commerce_app/view/screen/auth/login.dart';
import 'package:e_commerce_app/view/screen/auth/signup.dart';
import 'package:e_commerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login : (context) => const Login(),
  AppRoute.signUp : (context) => const SignUp(),
  AppRoute.onBoarding : (contex) => const OnBoarding(),
};