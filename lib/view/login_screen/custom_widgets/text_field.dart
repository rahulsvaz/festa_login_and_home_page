import 'package:festa_login_and_home_page/view/constants/colors.dart';
import 'package:flutter/material.dart';

class LoginTextFormField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final IconButton? suffixIcon;

  const LoginTextFormField({
    this.suffixIcon,
    required this.hintText,
    required this.prefixIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(color: Palette.scaffoldBgColor),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
