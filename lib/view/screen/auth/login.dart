import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/view/widget/auth/logoauth.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              const CustomTextFormAuth(
                  hintText: "Enter Your Email",
                  labelText: "Email",
                  iconData: Icons.email_outlined),
              const CustomTextFormAuth(
                  hintText: "Enter Your Password",
                  labelText: "Password",
                  iconData: Icons.lock_outlined),
              const Text(
                "Forget Password",
                textAlign: TextAlign.end,
              ),
              CustomButtonAuth(
                text: "Sign In",
                onPressed: () {},
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have an account ?"),
                  InkWell(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {},
                  )
                ],
              )
            ],
          ),
        ));
  }
}
