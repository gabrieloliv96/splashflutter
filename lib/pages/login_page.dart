// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:splashproject/components/login/custom_login_buttom_component.dart';
import 'package:splashproject/controllers/login_controller.dart';
import 'package:splashproject/widgets/custom_text_field_widget.dart';

class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        // color: Colors.cyan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.people, size: MediaQuery.of(context).size.height * 0.2),
            CustomTextFieldWidget(
              onChanged: _controller.setLogin,
              label: 'Usuario',
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setSenha,
              label: 'Senha',
              obscureText: true,
            ),
            SizedBox(
              height: 25,
            ),
            CustomLoginButtonComponent(
              loginController: _controller,
            ),
          ],
        ),
      ),
    );
  }
}
