import 'package:e_commerce_app/controller/auth/forgetpassword_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Forget Password',
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
              const CustomTextTitleAuth(text: "Check Email"),
              const SizedBox(
                height: 10,
              ),
              const CustomTextBodyAuth(
                  text:
                      'Please Enter Your Email Address To Receive A Verification Code'),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                hintText: "Enter Your Email",
                labelText: "Email",
                iconData: Icons.email_outlined,
                myController: controller.email,
              ),
              CustomButtonAuth(
                text: "Check",
                onPressed: controller.goToVerifyCode
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
