import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login_ui_test/controller/login_controller.dart';
import 'package:login_ui_test/widgets/my_button.dart';
import 'package:login_ui_test/widgets/my_logo_icon.dart';
import 'package:login_ui_test/widgets/my_text_form_field.dart';
import 'package:login_ui_test/widgets/my_title_widget.dart';

class LoginView extends StatelessWidget {
  // controllers
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      /*appBar: VxAppBar(
        centerTitle: true,
        title: Text('Login UI'),
      ),*/
      body: _buildBody(context),
    );
  }

  _buildBody(BuildContext context) {
    return Obx(() {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20.0,
                ),
                MyLogoIcon(
                  iconData: FontAwesomeIcons.eye,
                ),
                SizedBox(
                  height: 20.0,
                ),
                MyTitleWidget(),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20.0, top: 12.0),
                  // Container'ın childlarını hizalamak için kullanılır
                  // alignment: Alignment.center,
                  child: Form(
                    key: loginController.loginFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: 16.0,
                                    left: 16.0,
                                    right: 16.0,
                                    bottom: 10.0),
                                child: MyTextFormField(
                                  labelText: 'Eposta',
                                  onChanged: (value) {
                                    loginController.userEmail = value;
                                  },
                                  validator: loginController.emailValidator,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    top: 5.0,
                                    left: 16.0,
                                    right: 16.0,
                                    bottom: 12.0),
                                child: MyTextFormField(
                                  labelText: 'Parola',
                                  validator: loginController.passwordValidator,
                                  obscureText:
                                      loginController.passwordView.value,
                                  onChanged: (value) {
                                    loginController.userPassword = value;
                                  },
                                  leadingIcon: Icon(FontAwesomeIcons.key),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      FontAwesomeIcons.eye,
                                    ),
                                    onPressed: () =>
                                        loginController.changePasswordView(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    // color: Colors.blue,
                                    padding: EdgeInsets.only(
                                        left: 5.0,
                                        //top: 3.0,
                                        //right: 20.0,
                                        bottom: 3.0),
                                    child: Transform.scale(
                                      scale: 1.5,
                                      child: Checkbox(
                                        value: loginController.getUserReminder,
                                        onChanged: (bool value) {
                                          loginController.userReminder = value;
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    //color: Colors.red,
                                    padding: EdgeInsets.only(
                                        left: 2.0,
                                        top: 3.0,
                                        right: 20.0,
                                        bottom: 3.0),
                                    child: Text(
                                      'Beni Hatırla',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: MyButton(
                                onPressed: () => loginController.loginUser(),
                                buttonText: 'GİRİŞ',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // container'ın kenarlarını ovalleştirme
                    borderRadius: BorderRadius.circular(20.0),
                    gradient: LinearGradient(
                      colors: [
                        Colors.yellow.shade100,
                        Colors.yellowAccent.shade100,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    // elevation
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  // MediaQuery - Uygulamanın çalıştığı cihazın ekran boyutlarına ulaşmamıza imkan tanır
                  // 70 => 35 piksel soldan, 35 piksel sağdan
                  width: MediaQuery.of(context).size.width - 50,
                  //height: MediaQuery.of(context).size.width - 50,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
