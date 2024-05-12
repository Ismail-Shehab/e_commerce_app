import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode() ;
  
  goToSuccessSignUp();
}
class VerifyCodeSignUpControllerImp extends  VerifyCodeSignUpController {

  late String verifyCode ;

  @override
  checkCode() {
  }

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }
  @override
  void onInit() {
    super.onInit();
  }



}