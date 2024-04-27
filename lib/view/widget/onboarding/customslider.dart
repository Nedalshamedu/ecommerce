import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:ecommerce/controller/onboarding_controller.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            onBoardingList[i].image!,
            width: Get.width / 1.3,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(onBoardingList[i].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    height: 2,
                    color: AppColor.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
