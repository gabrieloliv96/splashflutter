import 'package:flutter/material.dart';
import 'package:splashproject/pages/login_page.dart';
import 'package:splashproject/pages/splash_page.dart';

import 'pages/details_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_)   => SplashPage(),
        '/login' : (_)   => LoginPage(),
        '/home' : (_)    => HomePage(),
        '/details' : (_) => DetailsPage(),
      },
    );
  }
}