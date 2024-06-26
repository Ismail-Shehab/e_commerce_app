import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword() ;
  
  goToSuccessResetPassword();
}
class ResetPasswordControllerImp extends  ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;


  @override
  resetPassword() {
  }

  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPassword);
  }
  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }


}