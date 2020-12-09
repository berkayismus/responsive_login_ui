import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // you may write propertys of login view

  // properties

  // observable properties
  RxBool passwordView = true.obs;
  RxBool _userReminder = false.obs;
  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();
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
  TextEditingController get getUserEmailController => _userEmailController;
  TextEditingController get getUserPasswordController =>
      _userPasswordController;
  get getUserReminder => _userReminder.value;

  // you may write setters in this
  set userPasswordController(String value) {
    _userPasswordController.text = value;
  }

  set userEmailController(String value) {
    _userEmailController.text = value;
  }

  set userReminder(bool value) {
    _userReminder.value = value;
  }

  void loginUser() {
    if (loginFormKey.currentState.validate()) {
      print('User email ' + getUserEmailController.text);
      print('User password ' + getUserPasswordController.text);
      // user reminder could save user email on device with SharedPreferences,Hive.. etc.
      print('User reminder value ' + getUserReminder.toString());
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
