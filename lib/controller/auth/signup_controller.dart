import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/routes.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  @override
  signUp() {
    if (formState.currentState!.validate()) {
      Get.offNamed(AppRoutes.verifyCodeSignUp);
      // ignore: avoid_print
      print("valid");
    } else {
      // ignore: avoid_print
      print("not Valid");
    }
  }

  @override
  void onInit() {
    super.onInit();
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.login);
  }
}
