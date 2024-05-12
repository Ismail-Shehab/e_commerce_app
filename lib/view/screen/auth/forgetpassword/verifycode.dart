import 'package:e_commerce_app/controller/auth/verifycode_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerifyCode extends StatelessWidget {
  const VerifyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller =
        Get.put(VerifyCodeControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Verification Code',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 33),
          child: ListView(
            children: [
              const CustomTextTitleAuth(text: "Check Code"),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(
                  text: 'Please Enter The Digit Code Sent To\nTest@Test.com'),
              const SizedBox(
                height: 15,
              ),
              OtpTextField(
                filled: true,
                enabledBorderColor: AppColor.grey,
                focusedBorderColor: AppColor.primaryColor,
                fieldWidth: 50,
                borderRadius: BorderRadius.circular(15),
                numberOfFields: 5,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.goToResetPassword();
                }, // end onSubmit
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
