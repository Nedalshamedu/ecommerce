import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:ecommerce/controller/onboardingcontroller.dart';

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
            height: 80,
          ),
          Image.asset(
            onBoardingList[i].image!,
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            onBoardingList[i].title!,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[i].body!,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
