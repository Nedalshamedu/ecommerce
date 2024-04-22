import 'package:ecommerce/core/constant/colorapp.dart';
import 'package:flutter/material.dart';

class CustomBottonLang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const CustomBottonLang({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        color: AppColor.primaryColor,
        onPressed: onPressed,
        textColor: Colors.white,
        child: Text(
          textbutton,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
