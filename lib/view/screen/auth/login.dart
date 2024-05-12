import 'package:e_commerce_app/controller/auth/loging-controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/view/widget/auth/logoauth.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:e_commerce_app/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "9".tr,
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
              const LogoAuth(),
              CustomTextTitleAuth(text: "10".tr),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                  text: "11".tr),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                hintText: "12".tr,
                labelText: "18".tr,
                iconData: Icons.email_outlined,
                myController: controller.email,
              ),
              CustomTextFormAuth(
                hintText: "13".tr,
                labelText: "19".tr,
                iconData: Icons.lock_outlined,
                myController: controller.password,
              ),
              InkWell(
                onTap: controller.goToForgetPassword,
                child: Text(
                  "14".tr,
                  textAlign: TextAlign.end,
                ),
              ),
              CustomButtonAuth(
                text: "15".tr,
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextSignUpOrSignIn(
                  textOne: "16".tr,
                  textTwo: "17".tr,
                  onTap: controller.goToSignUp)
            ],
          ),
        ));
  }
}
