import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/controller/auth/resetpassword_controller.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleformauth.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/custombuttonauth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Center(
          child: Text(
            '34'.tr,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            CustomTextTitleAuth(
              text: "34".tr,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextBodyAuth(text: "34".tr),
            const SizedBox(
              height: 50,
            ),
            CustomTextFormAuth(
              valid: (val) {
                return null;
              },
              myController: controller.password,
              lable: "12".tr,
              hint: "35".tr,
              iconData: Icons.lock_clock_outlined, isNumber: false,
            ),
            CustomTextFormAuth(
              valid: (val) {
                return null;
              },
              myController: controller.repassword,
              lable: "33".tr,
              hint: "34".tr,
              isNumber: false,
              iconData: Icons.lock_clock_outlined,
            ),
            CustomButtonAuth(
              text: "33".tr,
              onPressed: () {
                controller.goToSuccsessRestPassword();
              },
            ),
          ],
        ),
      ),
    );
  }
}
