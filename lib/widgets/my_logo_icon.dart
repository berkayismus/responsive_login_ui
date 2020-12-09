import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLogoIcon extends StatelessWidget {
  final IconData iconData;
  MyLogoIcon({@required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData ?? FontAwesomeIcons.google,
      color: Colors.white,
      size: 68.0,
    );
  }
}
