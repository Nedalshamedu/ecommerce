import 'package:ecommerce/core/functions/alertexitapp.dart';
import 'package:ecommerce/core/functions/validinput.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:ecommerce/view/widget/auth/logoauth.dart';
import 'package:ecommerce/controller/auth/login_controller.dart';
import 'package:ecommerce/view/widget/auth/textsignup.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleformauth.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/custombuttonauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Center(
          child: Text(
            "9".tr,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body:WillPopScope(onWillPop:  alertExitApp, child:Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: Form(
          key: controller.formState,
          child: ListView(
            children: [
              const LogoAuth(),
              CustomTextTitleAuth(
                text: "10".tr,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextBodyAuth(text: "11".tr),
              const SizedBox(
                height: 50,
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
          GetBuilder<LoginControllerImp>(builder: (context)=>    CustomTextFormAuth(
            valid: (val) {
              return validInput(val!, 5, 10, "password");
            },
            onTabIcon: controller.showpass(),
            obscureText: controller.isshowpassword,
            myController: controller.password,
            lable: "19".tr,
            hint: "13".tr,
            iconData: Icons.lock_outlined, isNumber: false,
          ),),
              InkWell(
                child: Text(
                  "14".tr,
                  textAlign: TextAlign.right,
                ),
                onTap: () {
                  controller.goToForgetPassword();
                },
              ),
              CustomButtonAuth(
                text: "15".tr,
                onPressed: () {
                  controller.login();
                },
              ),
              const SizedBox(height: 40),
              CustomTextSignUpOrSignIN(
                textOne: "16".tr,
                textTow: "17".tr,
                onTab: () {
                  controller.goToSignUp();
                },
              )
            ],
          ),
        ),
      ))
    );
  }
}
