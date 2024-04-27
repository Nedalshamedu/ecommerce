import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/custombuttonauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleformauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          elevation: 0.0,
          title: Center(
            child: Text(
              "20".tr,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        body:WillPopScope(onWillPop:  alertExitApp,
    child:        GetBuilder<SignUpControllerImp>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
            child: Form(
              key: controller.formState,
              child: ListView(
                children: [
                  CustomTextTitleAuth(
                    text: "17".tr,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextBodyAuth(text: "24".tr),
                  const SizedBox(
                    height: 50,
                  ),
                  CustomTextFormAuth(
                    valid: (val) {
                      return validInput(val!, 10, 20, "username");
                    },
                    myController: controller.username,
                    lable: "20".tr,
                    hint: "23".tr,
                    iconData: Icons.person_3_outlined, isNumber: false,
                  ),
                  CustomTextFormAuth(
                    valid: (val) {
                      return validInput(val!, 10, 20, "email");
                    },
                    myController: controller.email,
                    lable: "18".tr,
                    hint: "12".tr,
                    iconData: Icons.email_outlined, isNumber: false,
                  ),
                  CustomTextFormAuth(
                    valid: (val) {
                      return validInput(val!, 10, 20, "phone");
                    },
                    myController: controller.phone,
                    lable: "21".tr,
                    hint: "22".tr,
                    iconData: Icons.phone_android_outlined, isNumber: true,
                  ),
                  CustomTextFormAuth(
                    valid: (val) {
                      return validInput(val!, 5, 20, "password");
                    },
                    myController: controller.password,
                    lable: "19".tr,
                    hint: "13".tr,
                    iconData: Icons.lock_clock_outlined, isNumber: false,
                  ),
                  CustomButtonAuth(
                    text: "17".tr,
                    onPressed: () {
                      controller.signUp();
                    },
                  ),
                  const SizedBox(height: 40),
                  CustomTextSignUpOrSignIN(
                    textOne: "16".tr,
                    textTow: "26".tr,
                    onTab: () {
                      controller.goToSignIn();
                    },
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
