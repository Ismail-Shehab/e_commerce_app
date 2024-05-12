import 'package:e_commerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: AppColor.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
          bodyText1: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 17),
          bodyText2: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 14),
        ),
        primarySwatch: Colors.blue
      );
ThemeData themeArabic = ThemeData(
        fontFamily: "Cairo",
        textTheme: const TextTheme(
          headline1: TextStyle(
            color: AppColor.black,
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            headline2: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: AppColor.black),
          bodyText1: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 17),
          bodyText2: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontSize: 14),
        ),
        primarySwatch: Colors.blue
      );