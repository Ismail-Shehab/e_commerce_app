import 'package:e_commerce_app/core/localization/changelocal.dart';
import 'package:e_commerce_app/core/localization/translation.dart';
import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/test.dart';
import 'package:e_commerce_app/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';
import 'core/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: controller.language,
      theme: controller.appTheme,
      home:const Language(),
      // home:const Test(),
      routes: routes,
    );
  }
}

