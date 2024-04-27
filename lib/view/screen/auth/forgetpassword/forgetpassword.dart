import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/controller/auth/forgetpassword_controller.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleformauth.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/custombuttonauth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Center(
          child: Text(
            "14".tr,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            CustomTextTitleAuth(
              text: "27".tr,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextBodyAuth(text: "29".tr),
            const SizedBox(
              height: 50,
            ),
            CustomTextFormAuth(
              valid: (val) {
                return null;
              },
              myController: controller.email,
              lable: "18".tr,
              hint: "12".tr,
              iconData: Icons.email_outlined, isNumber: false,
            ),
            CustomButtonAuth(
              text: "30".tr,
              onPressed: () {
                controller.goToVerifyCode();
              },
            ),
          ],
        ),
      ),
    );
  }
}
