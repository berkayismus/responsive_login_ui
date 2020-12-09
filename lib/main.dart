import 'package:flutter/material.dart';
import 'view/login/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GİRİŞ UI',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LoginView(),
    );
  }
}
