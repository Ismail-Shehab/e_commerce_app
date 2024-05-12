import 'package:e_commerce_app/controller/onboarding_controller.dart';
import 'package:e_commerce_app/view/widget/onboarding/custombutton.dart';
import 'package:e_commerce_app/view/widget/onboarding/customslider.dart';
import 'package:e_commerce_app/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Expanded(
            flex: 5,
            child: CustomSliderOnBoarding(),
          ),
          const Spacer(),
          Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotControllerOnBoarding(),
                  Spacer(
                    flex: 1,
                  ),
                  CustomButtonOnBoarding()
                ],
              ))
        ],
      ),
    ));
  }
}
