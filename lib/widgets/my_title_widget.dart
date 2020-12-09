import 'package:flutter/material.dart';

class MyTitleWidget extends StatelessWidget {
  final String titleText;

  MyTitleWidget({this.titleText});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      titleText ?? 'BERKAYISMUS',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 10.0,
      ),
    );
    throw UnimplementedError();
  }
}
