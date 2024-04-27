import 'package:get/get.dart';
import 'package:ecommerce/core/constant/routes.dart';

abstract class SuccsessResetPasswordController extends GetxController {
  goToPageLogin();
}

class SuccsessResetPasswordControllerImp
    extends SuccsessResetPasswordController {
  @override
  goToPageLogin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }
}
