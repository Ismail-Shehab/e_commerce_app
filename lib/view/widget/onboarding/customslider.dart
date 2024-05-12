import 'package:e_commerce_app/controller/onboarding_controller.dart';
import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(flex: 4,),
                Image.asset(
                  onBoardingList[index].image!,
                  // width: 200,
                  height: Get.height / 2.7,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 10,),
                Spacer(),
                Text(
                  onBoardingList[index].title!,
                  style: const TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 10,),
                Spacer(),
                Container(
                  // height: Get.height / 4,
                  width: double.infinity,
                  // alignment: Alignment.topCenter,
                  child: Text(onBoardingList[index].body!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          height: 2,
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17)),
                ),
              ],
            ));
  }
}
