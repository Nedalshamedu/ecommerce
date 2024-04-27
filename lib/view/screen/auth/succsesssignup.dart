import 'package:ecommerce/controller/auth/succsess_signup.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccsessSignUp extends StatelessWidget {
  const SuccsessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccsessSignUPControllerImp controller =
        Get.put(SuccsessSignUPControllerImp());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Center(
          child: Text(
            'Succsess Sign Up',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Icon(Icons.check_circle_outline,
                  size: 150, color: AppColor.primaryColor),
            ),
            const Text(
              "Account Status:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Text("Succsessfully Account Created."),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "Go to Sign In",
                onPressed: () {
                  controller.goToPageLogin();
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
