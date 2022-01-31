import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:splashproject/pages/contact_page.dart';
import 'package:splashproject/pages/login_page.dart';
import 'package:splashproject/pages/splash_page.dart';

import 'pages/boletos_page.dart';
import 'pages/details_page.dart';
import 'pages/index_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => SplashPage(),
        '/login': (_) => LoginPage(),
        '/index': (_) => IndexPage(),
        '/details': (_) => DetailsPage(),
        '/contact': (_) => ContactPage(),
        '/boletos': (_) => BoletosPage(),
      },
    );
  }
}
