import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Icon leadingIcon;
  final Function validator;
  final bool obscureText;
  final IconButton suffixIcon;
  final TextEditingController controller;

  MyTextFormField({
    @required this.labelText,
    @required this.controller,
    this.leadingIcon,
    this.hintText,
    this.validator,
    this.obscureText,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.black,
      ),
      decoration: InputDecoration(
        errorStyle: TextStyle(
          fontSize: 18.0,
        ),
        icon: leadingIcon ??
            Icon(
              FontAwesomeIcons.at,
              size: 30.0,
            ),
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      validator: validator ??
          (String value) {
            // return value.contains('@') ? 'Do not use the @ char.' : null;
            return null;
          },
    );
  }
}
