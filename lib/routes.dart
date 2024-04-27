import 'package:ecommerce/core/middleware/mymiddleware.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/succsessresetpassword.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/verifycodesignup.dart';
import 'package:ecommerce/view/screen/auth/succsesssignup.dart';
import 'package:ecommerce/core/constant/routes.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:ecommerce/view/screen/onboarding.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language(),middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.signUp, page: () => const SignUp()),
  GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.succsessSignUp, page: () => const SuccsessSignUp()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),

  GetPage(
      name: AppRoutes.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),
  GetPage(
      name: AppRoutes.succsessResetPassword,
      page: () => const SuccsessResetPassword()),
];
