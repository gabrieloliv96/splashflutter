import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contatos'),
        centerTitle: true,
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     // Within the `FirstScreen` widget
      //     onPressed: () {
      //       // Navigate to the second screen using a named route.
      //       Navigator.pushNamed(context, '/second');
      //     },
      //     child: const Text('Launch screen'),
      //   ),
      // ),
    );
  }
}
