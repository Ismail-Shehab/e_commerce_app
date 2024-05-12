import 'package:e_commerce_app/controller/auth/resetpassword_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "40".tr,
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
              CustomTextTitleAuth(text: "35".tr),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                  text: "35".tr),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                hintText: "13".tr,
                labelText: "19".tr,
                iconData: Icons.lock_outlined,
                myController: controller.password,
              ),
              CustomTextFormAuth(
                hintText: "39".tr,
                labelText: "19".tr,
                iconData: Icons.lock_outlined,
                myController: controller.password,
              ),
              CustomButtonAuth(
                text: "33".tr,
                onPressed: controller.goToSuccessResetPassword,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
