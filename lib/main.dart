import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:ecommerce/core/services/services.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:ecommerce/core/localization/changelocal.dart';
import 'package:ecommerce/core/localization/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController controller = Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: AppColor.black),
          headlineLarge: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.black),
          bodyMedium: TextStyle(height: 2, color: AppColor.gray, fontSize: 20),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
      routes: routes,
    );
  }
}
