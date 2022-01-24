import 'package:flutter/material.dart';
import 'package:splashproject/models/post_model.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          children: [
            Text(
              'Noticia ${args.id.toString()} , Autor ${args.userId}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              args.title,
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(
              height: 20,
            ),
            Text(args.body),
          ],
        ),
      ),
    );
  }
}
