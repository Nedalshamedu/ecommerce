import 'package:ecommerce/view/screen/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:ecommerce/view/widget/auth/logoauth.dart';
import 'package:ecommerce/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce/view/widget/auth/customtexttitleformauth.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Center(
          child: Text(
            'Sign In',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            const LogoAuth(),
            const CustomTextTitleAuth(
              text: "Welcome Back",
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextBodyAuth(
                text:
                    "Sign In With Your Email And Password\n Or With Your Social Accounts"),
            const SizedBox(
              height: 50,
            ),
            const CustomTextFormAuth(
              lable: "Email",
              hint: "Enter Your Email",
              iconData: Icons.email_outlined,
            ),
            const CustomTextFormAuth(
              lable: "Password",
              hint: "Enter Your Password",
              iconData: Icons.lock_outlined,
            ),
            const Text(
              "Forget Password ?",
              textAlign: TextAlign.right,
            ),
            CustomButtonAuth(
              text: "Sign In",
              onPressed: () {},
            ),
            const SizedBox(height: 40),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Dont have an Account ? ",
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.bold),
              ),
              InkWell(
                child: const Text(
                  " Sign Up",
                  style: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {},
              )
            ]),
          ],
        ),
      ),
    );
  }
}
