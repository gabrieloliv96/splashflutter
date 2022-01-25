import 'package:flutter/material.dart';
import 'package:splashproject/services/pref_services.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    
    Future.wait(
      [
        PrefServices.isAuth(),
        Future.delayed(Duration(seconds: 2)),
      ]
    ).then((value) => value[0] ? Navigator.of(context).pushReplacementNamed('/home') : Navigator.of(context).pushReplacementNamed('/login'));
    
    
    
    // Future.delayed(Duration(seconds: 3)).then(
    //   (_) => Navigator.of(context).pushReplacementNamed('/login'),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade400,
      child: Center(
        child: CircularProgressIndicator(
          color: Colors.brown.shade900,
        ),
      ),
    );
  }
}
