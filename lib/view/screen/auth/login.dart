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
            'Sign In',
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
              const CustomTextTitleAuth(text: "Welcome Back"),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(
                  text:
                      'Sign In With Your Email And Password Or Continue With Social Media'),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                hintText: "Enter Your Email",
                labelText: "Email",
                iconData: Icons.email_outlined,
                myController: controller.email,
              ),
              CustomTextFormAuth(
                hintText: "Enter Your Password",
                labelText: "Password",
                iconData: Icons.lock_outlined,
                myController: controller.password,
              ),
              InkWell(
                onTap: controller.goToForgetPassword,
                child: const Text(
                  "Forget Password",
                  textAlign: TextAlign.end,
                ),
              ),
              CustomButtonAuth(
                text: "Sign In",
                onPressed: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextSignUpOrSignIn(
                  textOne: "Don't Have An Account ? ",
                  textTwo: "Sing Up",
                  onTap: controller.goToSignUp)
            ],
          ),
        ));
  }
}
