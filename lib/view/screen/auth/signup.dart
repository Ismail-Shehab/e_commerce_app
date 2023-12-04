import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/view/widget/auth/logoauth.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:e_commerce_app/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/signup-controller.dart';

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
            'Sign Up',
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
              const CustomTextTitleAuth(text: "Welcome Back"),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(
                  text:
                      'Sign Up With Your Email And Password Or Continue With Social Media'),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                hintText: "Enter Your UserName",
                labelText: "UserName",
                iconData: Icons.person_outlined,
                myController: controller.username,
              ),
              CustomTextFormAuth(
                hintText: "Enter Your Email",
                labelText: "Email",
                iconData: Icons.email_outlined,
                myController: controller.email,
              ),
              CustomTextFormAuth(
                hintText: "Enter Your Phone",
                labelText: "Phone",
                iconData: Icons.phone_android_outlined,
                myController: controller.phone,
              ),
              CustomTextFormAuth(
                hintText: "Enter Your Password",
                labelText: "Password",
                iconData: Icons.lock_outlined,
                myController: controller.password,
              ),
              // const Text(
              //   "Forget Password",
              //   textAlign: TextAlign.end,
              // ),
              CustomButtonAuth(
                text: "Sign Up",
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextSignUpOrSignIn(
                  textOne: "Have An Account ? ",
                  textTwo: "Sing In",
                  onTap: controller.goToSignIn)
            ],
          ),
        ));
  }
}
