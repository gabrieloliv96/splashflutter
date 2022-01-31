import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '';

class BoletosPage extends StatelessWidget {
  final DateTime data = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boletos'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        
        child: Column(

          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              'Dúvidas e mais informação por favor contatar a Cabemce.',
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            Text(
              '(85) 9 8650-5652 ou (85) 3045-6456',
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              // Within the `FirstScreen` widget
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/second');
              },
              child: Text(
                  DateFormat("'Data por extenso:' d 'de' MMMM 'de' y", "pt_BR")
                      .format(data)),
            ),
          ],
        ),
      ),
    );
  }
}
