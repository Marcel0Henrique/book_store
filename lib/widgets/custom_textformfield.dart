import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final ValueChanged? onChanged;
  final bool obscureText;
  const CustomTextFormField({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
    this.controller,
    this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        shape: BoxShape.rectangle,
        color: const Color(0xff565656),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffix: suffixIcon,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
