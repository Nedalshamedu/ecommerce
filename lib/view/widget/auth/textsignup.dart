import 'package:flutter/material.dart';
import 'package:ecommerce/core/constant/colorapp.dart';

class CustomTextSignUpOrSignIN extends StatelessWidget {
  final String textOne;
  final String textTow;
  final void Function()? onTab;
  const CustomTextSignUpOrSignIN(
      {super.key, required this.textOne, required this.textTow, this.onTab});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        textOne,
        style: const TextStyle(
            color: Colors.lightBlue, fontWeight: FontWeight.bold),
      ),
      InkWell(
        onTap: () {
          onTab!();
        },
        child: Text(
          textTow,
          style: const TextStyle(
              color: AppColor.primaryColor, fontWeight: FontWeight.bold),
        ),
      )
    ]);
  }
}
