import 'package:flutter/widgets.dart';
import 'package:splashproject/services/pref_services.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _senha;
  setSenha(String value) => _senha = value;

  Future<bool> auth() async {
    inLoader.value = true;
    await Future.delayed(Duration(seconds: 3));
    // Só pra fingir consumo de api
    Future.delayed(Duration(seconds: 2));
    inLoader.value = false;
    if (_login == 'admin' && _senha == '123') {
      PrefServices.save(_login!);
      return true;
    }
    return false;
  }
}
