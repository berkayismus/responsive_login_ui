import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTextFormField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Icon leadingIcon;
  final Function onSaved;
  final Function onChanged;
  final Function validator;
  final bool obscureText;
  final IconButton suffixIcon;

  MyTextFormField(
      {@required this.labelText,
      this.leadingIcon,
      this.hintText,
      @required this.onSaved,
      this.validator,
      this.obscureText,
      this.suffixIcon,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.black,
      ),
      onChanged: onChanged ?? (value) {},
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
      onSaved: onSaved ?? (value) => {},
      validator: validator ??
          (String value) {
            // return value.contains('@') ? 'Do not use the @ char.' : null;
            return null;
          },
    );
  }
}
