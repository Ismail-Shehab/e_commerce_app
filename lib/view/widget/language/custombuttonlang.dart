import 'package:e_commerce_app/core/constant/color.dart';
import 'package:e_commerce_app/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonLang extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLang({ Key? key, required this.textButton, this.onPressed }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              width: double.infinity,
              child: MaterialButton(
                color: AppColor.primaryColor,
                textColor: Colors.white,
                onPressed: (){
                  onPressed!();
                  Get.toNamed(AppRoute.onBoarding);
                },
                child:  Text(
                  textButton,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
  }
}