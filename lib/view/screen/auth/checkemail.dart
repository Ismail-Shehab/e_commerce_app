import 'package:e_commerce_app/controller/auth/checkemail_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtextformauth.dart';
import 'package:e_commerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "27".tr,
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
              CustomTextTitleAuth(text: "28".tr),
              const SizedBox(
                height: 10,
              ),
              CustomTextBodyAuth(
                  text:
                      "29".tr),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormAuth(
                hintText: "12".tr,
                labelText: "18".tr,
                iconData: Icons.email_outlined,
                myController: controller.email,
              ),
              CustomButtonAuth(
                text: "30".tr,
                onPressed: controller.goToVerifyCodeSignUp
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ));
  }
}
