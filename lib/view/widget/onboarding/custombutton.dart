import 'package:e_commerce_app/controller/onboarding_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 40,
                  margin: const EdgeInsets.only(bottom: 30),
                  child: MaterialButton(
                    child: const Text("Continue"),
                    color: AppColor.primaryColor,
                    textColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
                    onPressed: (){
                      controller.next();
                    },
                  ) ,
                );
  }
}