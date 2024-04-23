import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String lable;
  final String hint;
  final IconData iconData;
  final TextEditingController? myController;
  const CustomTextFormAuth(
      {super.key,
      required this.lable,
      required this.hint,
      required this.iconData,
      this.myController});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
          controller: myController,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(lable)),
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 14),
            suffixIcon: Icon(iconData),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          )),
    );
  }
}
