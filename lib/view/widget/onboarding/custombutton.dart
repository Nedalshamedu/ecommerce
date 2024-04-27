import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:ecommerce/controller/onboarding_controller.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      height: 50,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        child: Text(
          "8".tr,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
