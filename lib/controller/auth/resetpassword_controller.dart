import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccsessRestPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetPassword() {}

  @override
  void onInit() {
    super.onInit();
    password = TextEditingController();
    repassword = TextEditingController();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }

  @override
  goToSuccsessRestPassword() {
    Get.offNamed(AppRoutes.succsessResetPassword);
  }
}
