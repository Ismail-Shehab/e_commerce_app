import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:e_commerce_app/view/screen/auth/checkemail.dart';
import 'package:e_commerce_app/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/login.dart';
import 'package:e_commerce_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:e_commerce_app/view/screen/auth/signup.dart';
import 'package:e_commerce_app/view/screen/auth/forgetpassword/success_reset_password.dart';
import 'package:e_commerce_app/view/screen/auth/success_signup.dart';
import 'package:e_commerce_app/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:e_commerce_app/view/screen/auth/verifycodesignup.dart';
import 'package:e_commerce_app/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login : (context) => const Login(),
  AppRoute.signUp : (context) => const SignUp(),
  AppRoute.forgetPassword : (contex) => const ForgetPassword(),
  AppRoute.resetPassword : (contex) => const ResetPassword(),
  AppRoute.checkEmail : (contex) => const CheckEmail(),
  AppRoute.verifyCode : (contex) => const VerifyCode(),
  AppRoute.verifyCodeSignUp : (contex) => const VerifyCodeSignUp(),
  AppRoute.onBoarding : (contex) => const OnBoarding(),
  AppRoute.successResetPassword : (contex) => const SuccessResetPassword(),
  AppRoute.successSignUp : (contex) => const SuccessSignUp(),
};