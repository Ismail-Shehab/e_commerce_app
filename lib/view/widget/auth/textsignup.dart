import 'package:e_commerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class CustomTextSignUpOrSignIn extends StatelessWidget {
  final String textOne ;
  final String textTwo ;
  final void Function() onTap;
  const CustomTextSignUpOrSignIn({ Key? key,required this.textOne,required this.textTwo, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(textOne),
                  InkWell(
                    child: Text(
                      textTwo,
                      style: const TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: onTap,
                  )
                ],
              );
  }
}