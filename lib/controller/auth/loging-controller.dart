import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login() ;
  goToSignUp();
  goToForgetPassword();
}
class LoginControllerImp extends  LoginController {
  late TextEditingController email;
  late TextEditingController password;


  @override
  login() {
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }
  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }


}