import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // you may write propertys of login view

  // properties
  String _userEmail = '';
  String _userPassword = '';
  // observable properties
  RxBool passwordView = true.obs;
  RxBool _userReminder = false.obs;
  final loginFormKey = GlobalKey<FormState>();

  // onInit is like a initState in Stateful Widgets
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void changePasswordView() {
    if (passwordView.value == true) {
      passwordView.value = false;
    } else {
      passwordView.value = true;
    }
  }

  // you may write functions of login view

  // you may write getters in this,
  get getUserEmail => _userEmail;
  get getUserPassword => _userPassword;
  get getUserReminder => _userReminder.value;

  // you may write setters in this
  set userPassword(String value) {
    _userPassword = value;
  }

  set userEmail(String value) {
    _userEmail = value;
  }

  set userReminder(bool value) {
    _userReminder.value = value;
  }

  void loginUser() {
    if (loginFormKey.currentState.validate()) {
      print('User email ' + getUserEmail);
      print('User password ' + getUserPassword);
      print('User reminder ' + getUserReminder.toString());
      print('User login..');
    }
  }

  String emailValidator(String value) {
    if (!value.contains("@")) {
      return "Geçerli bir eposta adresi girin";
    } else {
      return null;
    }
  }

  String passwordValidator(String value) {
    if (value.length < 6) {
      return "Parola en az 6 karakter olmalı";
    } else {
      return null;
    }
  }
}
