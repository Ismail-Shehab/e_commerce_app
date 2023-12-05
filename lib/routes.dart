import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:e_commerce_app/view/screen/auth/forgetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/login.dart';
import 'package:e_commerce_app/view/screen/auth/resetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/signup.dart';
import 'package:e_commerce_app/view/screen/auth/success_reset_password.dart';
import 'package:e_commerce_app/view/screen/auth/success_signup.dart';
import 'package:e_commerce_app/view/screen/auth/verifycode.dart';
import 'package:e_commerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login : (context) => const Login(),
  AppRoute.signUp : (context) => const SignUp(),
  AppRoute.forgetPassword : (contex) => const ForgetPassword(),
  AppRoute.resetPassword : (contex) => const ResetPassword(),
  AppRoute.verifyCode : (contex) => const VerifyCode(),
  AppRoute.onBoarding : (contex) => const OnBoarding(),
  AppRoute.successResetPassword : (contex) => const SuccessResetPassword(),
  AppRoute.successSignUp : (contex) => const SuccessSignUp(),
};