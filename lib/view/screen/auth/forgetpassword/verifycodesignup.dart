import 'package:ecommerce/controller/auth/verifycodesignup_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleformauth.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    VerifyCodeSignUpControImp controller = Get.put(VerifyCodeSignUpControImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Center(
          child: Text(
            'Verification code',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            const CustomTextTitleAuth(
              text: "Check Code",
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextBodyAuth(
                text: "Please Enter The digit Code sent to yor Email"),
            const SizedBox(
              height: 50,
            ),
            OtpTextField(
              fieldWidth: 60,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToSuccsessSignUp();
              }, // end onSubmit
            )
          ],
        ),
      ),
    );
  }
}
