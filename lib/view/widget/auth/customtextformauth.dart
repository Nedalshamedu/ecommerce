import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String lable;
  final String hint;
  final IconData iconData;
  final TextEditingController? myController;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTabIcon;

  const CustomTextFormAuth(
      {super.key,
        this.obscureText,
        this.onTabIcon,
      required this.lable,
      required this.hint,
      required this.iconData,
      required this.myController,
      this.valid,
      required this.isNumber});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        obscureText: obscureText==null||obscureText==false?false:true,
          keyboardType: isNumber
              ? const TextInputType.numberWithOptions(decimal: true)
              : TextInputType.text,
          validator: valid,
          controller: myController,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(lable)),
            hintText: hint,
            hintStyle: const TextStyle(fontSize: 14),
            suffixIcon: InkWell(onTap: onTabIcon,child: Icon(iconData),),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          )),
    );
  }
}
