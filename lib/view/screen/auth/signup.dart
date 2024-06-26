import 'package:e_commerce_app/controller/auth/signup-controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:e_commerce_app/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "17".tr,
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
              CustomTextTitleAuth(text: "10".tr),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                  text:"24".tr),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                hintText: "23".tr,
                labelText: "20".tr,
                iconData: Icons.person_outlined,
                myController: controller.username,
              ),
              CustomTextFormAuth(
                hintText: "12".tr,
                labelText: "18".tr,
                iconData: Icons.email_outlined,
                myController: controller.email,
              ),
              CustomTextFormAuth(
                hintText: "22".tr,
                labelText: "21".tr,
                iconData: Icons.phone_android_outlined,
                myController: controller.phone,
              ),
              CustomTextFormAuth(
                hintText: "13".tr,
                labelText: "19".tr,
                iconData: Icons.lock_outlined,
                myController: controller.password,
              ),
              CustomButtonAuth(
                text: "17".tr,
                onPressed: () {
                  controller.signUp();
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextSignUpOrSignIn(
                  textOne: "25".tr,
                  textTwo: "26".tr,
                  onTap: controller.goToSignIn)
            ],
          ),
        ));
  }
}
