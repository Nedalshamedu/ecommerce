import 'package:get/get.dart';
import 'package:ecommerce/core/constant/routes.dart';

abstract class SuccsessSignUPController extends GetxController {
  goToPageLogin();
}

class SuccsessSignUPControllerImp extends SuccsessSignUPController {
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
