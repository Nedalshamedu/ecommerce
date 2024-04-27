import 'package:get/get.dart';
import 'package:ecommerce/core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControImp extends VerifyCodeController {
  late String verifyCode;

  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassword);
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }
}
