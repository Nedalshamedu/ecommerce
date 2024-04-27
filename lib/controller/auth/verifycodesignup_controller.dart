import 'package:get/get.dart';
import 'package:ecommerce/core/constant/routes.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccsessSignUp();
}

class VerifyCodeSignUpControImp extends VerifyCodeSignUpController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToSuccsessSignUp() {
    Get.offNamed(AppRoutes.succsessSignUp);
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }
}
