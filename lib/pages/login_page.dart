// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:splashproject/controllers/login_controller.dart';

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
            TextField(
              decoration: InputDecoration(
                label: Text('Usuário'),
              ),
              onChanged: _controller.setLogin,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Senha'),
              ),
              obscureText: true,
              onChanged: _controller.setSenha,
            ),
            SizedBox(
              height: 25,
            ),
            ValueListenableBuilder<bool>(
              valueListenable: _controller.inLoader,
              builder: (_, inLoader, __) => inLoader
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        _controller.auth().then((result) {
                          if (result) {
                            Navigator.of(context).pushReplacementNamed('/home');
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Login ou senha invalidos.'),
                              ),
                            );
                          }
                        });
                      },
                      child: Text('Login'),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
